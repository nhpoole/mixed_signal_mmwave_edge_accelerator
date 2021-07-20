####################################################################
# Innovus Foundation Flow Code Generator, Mon Jul 19 16:28:58 PDT 2021
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
# <BEGIN TAG> postcts_hold,set_distribute_host
setDistributeHost -local

# <END TAG> postcts_hold,set_distribute_host
# <BEGIN TAG> postcts_hold,set_multi_cpu_usage
setMultiCpuUsage -localCpu 16

# <END TAG> postcts_hold,set_multi_cpu_usage

if {$vars(restore_design)} { # <BEGIN TAG> postcts_hold,restore_design

# <begin tag postcts_hold,restore_design,skip>
#
# restoreDesign checkpoints/cts.enc.dat sar_adc_controller
#
# <end tag postcts_hold,restore_design,skip> }

um::enable_metrics -on
puts "<FF> Plugin -> always_source_tcl"
ff_procs::source_plug always_source_tcl

#-------------------------------------------------------------
set vars(step) postcts_hold
set vars(postcts_hold,start_time) [clock seconds]
um::push_snapshot_stack
#-------------------------------------------------------------

######################################################################
# Variables affecting this step:
#---------------------------------------------------------------------
# - vars(process)
# - vars(power_effort)
# - vars(fix_hold_allow_tns_degradation)
######################################################################
# Additional variables for this step:
#---------------------------------------------------------------------
# - vars(power_ratio) "0.0 to 1.0"
# - vars(delay_cells)
# - vars(fix_hold_ignore_ios)
######################################################################
# <BEGIN TAG> postcts_hold,initialize_step
#
# STEP postcts_hold
#
# The active analysis views are controlled by the following variables:
#---------------------------------------------------------------------
# - vars(postcts_hold,active_setup_views)
# - vars(postcts_hold,active_hold_views)
#
######################################################################
# set_analysis_view -setup $vars(postcts_hold,active_setup_views) -hold $vars(postcts_hold,active_hold_views)
#
# <BEGIN TAG> postcts_hold,set_design_mode
setDesignMode -process 130 -powerEffort high

# <END TAG> postcts_hold,set_design_mode
# <BEGIN TAG> postcts_hold,set_opt_mode
setOptMode -fixHoldAllowSetupTnsDegrade true

# <END TAG> postcts_hold,set_opt_mode

# <END TAG> postcts_hold,initialize_step
Puts "<FF> RUNNING POST-CTS HOLD FIXING ..."
#
# RUNNING POST-CTS HOLD FIXING
#
puts "<FF> Plugin -> pre_postcts_hold_tcl"
# <BEGIN TAG> postcts_hold,opt_design
optDesign -postCTS -hold -outDir reports -prefix postcts_hold

# <END TAG> postcts_hold,opt_design
puts "<FF> Plugin -> post_postcts_hold_tcl"
#-------------------------------------------------------------

#
# SAVING RESULTS
#
um::pop_snapshot_stack
create_snapshot -name postcts_hold -categories design
report_metric -file reports/metrics.html -format html
# <BEGIN TAG> postcts_hold,save_design

# <begin tag postcts_hold,save_design,replace_tcl>
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

# <end tag postcts_hold,save_design,replace_tcl>


# <END TAG> postcts_hold,save_design
# <BEGIN TAG> postcts_hold,save_lec_netlist
saveNetlist checkpoints/LEC/postcts_hold.v.gz

# <END TAG> postcts_hold,save_lec_netlist
#if {[info exists env(VPATH)]} {exec /bin/touch $env(VPATH)/postcts_hold}
ff_procs::report_time
puts "<FF> Plugin -> final_always_source_tcl"

if {![info exists vars(single)]} {
   exit 0
}

