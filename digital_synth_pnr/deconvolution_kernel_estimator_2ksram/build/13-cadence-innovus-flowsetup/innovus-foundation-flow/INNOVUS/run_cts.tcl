####################################################################
# Innovus Foundation Flow Code Generator, Sun Jul 11 16:15:51 PDT 2021
# Version : 19.11-s001_1
####################################################################

if {[file exists innovus-foundation-flow/vars.tcl]} {
   source innovus-foundation-flow/vars.tcl
}
foreach file $vars(config_files) {
   source $file
}

source innovus-foundation-flow/procs.tcl
ff_procs::system_info
# <BEGIN TAG> cts,set_distribute_host
setDistributeHost -local

# <END TAG> cts,set_distribute_host
# <BEGIN TAG> cts,set_multi_cpu_usage
setMultiCpuUsage -localCpu 16

# <END TAG> cts,set_multi_cpu_usage

if {$vars(restore_design)} { # <BEGIN TAG> cts,restore_design

# <begin tag cts,restore_design,skip>
#
# restoreDesign checkpoints/place.enc.dat deconv_kernel_estimator_top_level
#
# <end tag cts,restore_design,skip> }

um::enable_metrics -on
puts "<FF> Plugin -> always_source_tcl"
ff_procs::source_plug always_source_tcl

#-------------------------------------------------------------
set vars(step) cts
set vars(cts,start_time) [clock seconds]
um::push_snapshot_stack
#-------------------------------------------------------------

######################################################################
# Variables affecting this step:
#---------------------------------------------------------------------
# - vars(process)
# - vars(power_effort)
# - vars(enable_cppr)
# - vars(route_clock_nets)
# - vars(ccopt_integration)
# - vars(update_io_latency)
# - vars(ccopt_effort)
# - vars(multi_cut_effort)
# - vars(litho_driven_routing)
######################################################################
# Additional variables for this step:
#---------------------------------------------------------------------
# - vars(power_ratio) "0.0 to 1.0"
# - vars(enable_ocv) "pre_cts"
# - vars(enable_aocv) "true"
# - vars(enable_socv) "true"
# - vars(clk_tree_top_layer)
# - vars(clk_leaf_top_layer)
# - vars(clk_tree_bottom_layer)
# - vars(clk_leaf_bottom_layer)
# - vars(clk_leaf_ndr)
# - vars(clk_tree_ndr)
# - vars(clk_leaf_extra_space)
# - vars(clk_tree_extra_space)
# - vars(cts_inverter_cells)
# - vars(cts_buffer_cells)
# - vars(clock_gate_cells)
# - vars(cts_use_inverters)
# - vars(cts_io_opt)
# - vars(cts_target_skew)
# - vars(cts_target_slew)
# - vars(ccopt_executable)
# - vars(clk_tree_shield_net)
######################################################################
# <BEGIN TAG> cts,initialize_step
#
# STEP cts
#
# The active analysis views are controlled by the following variables:
#---------------------------------------------------------------------
# - vars(cts,active_setup_views)
# - vars(cts,active_hold_views)
#
######################################################################
# set_analysis_view -setup $vars(cts,active_setup_views) -hold $vars(cts,active_hold_views)
#
# <BEGIN TAG> cts,set_design_mode
setDesignMode -process 130 -powerEffort high

# <END TAG> cts,set_design_mode
# <BEGIN TAG> cts,set_analysis_mode
setAnalysisMode -cppr both

# <END TAG> cts,set_analysis_mode
# <BEGIN TAG> cts,set_ccopt_mode

# <begin tag cts,set_ccopt_mode,skip>
#
# set_ccopt_mode  -integration "native" -ccopt_modify_clock_latency true
#
# <end tag cts,set_ccopt_mode,skip>


# <BEGIN TAG> cts,set_nanoroute_mode

setNanoRouteMode -drouteUseMultiCutViaEffort high -routeWithLithoDriven true

# <END TAG> cts,set_nanoroute_mode

# <END TAG> cts,initialize_step
Puts "<FF> RUNNING CLOCK TREE SYNTHESIS ..."
#
# RUNNING CLOCK TREE SYNTHESIS
#
# <BEGIN TAG> cts,enable_clock_gate_cells

# <END TAG> cts,enable_clock_gate_cells
# <BEGIN TAG> cts,update_timing
Puts "<FF> UPDATING TIMING ..."
if {[lsearch [all_constraint_modes] constraints_default] != -1} {
   set vars(constraints_default,post_cts_sdc_list) [concat ./inputs/design.sdc ]
}
set restore [get_global timing_defer_mmmc_object_updates]
set_global timing_defer_mmmc_object_updates true
foreach mode [all_constraint_modes] {
   if {[info exists vars($mode,post_cts_sdc_list)]} {
      update_constraint_mode -name $mode \
         -sdc_files $vars($mode,post_cts_sdc_list)
   } else {
      foreach view [all_analysis_views] {
         set m [regsub _$view $mode ""]
         if {[info exists vars($m,post_cts_sdc_list)]} {
            update_constraint_mode -name $mode \
               -sdc_files $vars($m,post_cts_sdc_list)
         }
      }
   }
}
set_analysis_view -update_timing
set_global timing_defer_mmmc_object_updates $restore

# <END TAG> cts,update_timing
# <BEGIN TAG> cts,derate_timing
source innovus-foundation-flow/timingderate.sdc

# <END TAG> cts,derate_timing
puts "<FF> Plugin -> pre_cts_tcl"
# <BEGIN TAG> cts,create_ccopt_clock_tree_spec
create_ccopt_clock_tree_spec

# <END TAG> cts,create_ccopt_clock_tree_spec
# <BEGIN TAG> cts,ccopt_design
ccopt_design -outDir reports -prefix cts

# <END TAG> cts,ccopt_design
puts "<FF> Plugin -> post_cts_tcl"
#-------------------------------------------------------------

#
# SAVING RESULTS
#
um::pop_snapshot_stack
create_snapshot -name cts -categories design
report_metric -file reports/metrics.html -format html
# <BEGIN TAG> cts,save_design

# <begin tag cts,save_design,replace_tcl>
#=========================================================================
# embed-return.tcl
#=========================================================================
# Dummy script that calls return. This script can be embedded in the
# foundation flow to purposely inject a return statement and skip the rest
# of that step.
#
# Author : Christopher Torng
# Date : January 13, 2020

return

# <end tag cts,save_design,replace_tcl>


# <END TAG> cts,save_design
# <BEGIN TAG> cts,save_lec_netlist
saveNetlist checkpoints/LEC/cts.v.gz

# <END TAG> cts,save_lec_netlist
#if {[info exists env(VPATH)]} {exec /bin/touch $env(VPATH)/cts}
ff_procs::report_time
puts "<FF> Plugin -> final_always_source_tcl"

if {![info exists vars(single)]} {
   exit 0
}

