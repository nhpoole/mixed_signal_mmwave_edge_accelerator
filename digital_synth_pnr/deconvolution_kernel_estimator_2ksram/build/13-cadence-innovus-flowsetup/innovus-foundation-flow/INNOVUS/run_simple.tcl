#####################################################################
#                       SINGLE SCRIPT FLOW
#####################################################################

source innovus-foundation-flow/vars.tcl
source innovus-foundation-flow/procs.tcl

ff_procs::system_info
# <BEGIN TAG> init,set_distribute_host
setDistributeHost -local

# <END TAG> init,set_distribute_host
# <BEGIN TAG> init,set_multi_cpu_usage
setMultiCpuUsage -localCpu 16

# <END TAG> init,set_multi_cpu_usage


######################################################################
# Variables affecting this step:
#---------------------------------------------------------------------
# - vars(report_run_time)
# - vars(max_route_layer)
# - vars(process)
# - vars(power_effort)
######################################################################
# Additional variables for this step:
#---------------------------------------------------------------------
# - vars(ilm_list) "<list of ILMs>"
# - vars(<ilm>,ilm_dir) "<path to ILM directory>"
# - vars(<ilm>,lef_file) "<LEF file for block associated with ILM>"
# - vars(<ilm>,setup_lib) "<LIB file for block associated with ILM>"
# - vars(fp_tcl_file)
# - vars(fp_tcl_proc)
# - vars(fp_file)
# - vars(oa_fp)
# - vars(def_files)
# - vars(add_tracks)
# - vars(ilm_non_sdc_file)
# - vars(activity_file)
# - vars(activity_file_format)
# - vars(scan_def)
# - vars(spare_cells)
# - vars(dont_use_list)
# - vars(dont_use_file)
# - vars(use_list)
# - vars(power_ratio) "0.0 to 1.0"
# - vars(welltaps)
# - vars(pre_endcap)
# - vars(post_endcap)
######################################################################
set vars(step) init
set vars(init,start_time) [clock seconds]
exec mkdir -p $env(VPATH)
puts "<FF> Plugin -> pre_init_tcl"
#
# FLAT IMPLEMENTATION FLOW
#
#
# LOADING DESIGN DATA
#
# <BEGIN TAG> init,init_design
source innovus-foundation-flow/init.tcl
init_design

# <END TAG> init,init_design
um::enable_metrics -on
um::push_snapshot_stack
puts "<FF> Plugin -> always_source_tcl"
ff_procs::source_plug always_source_tcl
# <BEGIN TAG> init,load_floorplan

# <END TAG> init,load_floorplan
# <BEGIN TAG> init,initialize_timing

# <END TAG> init,initialize_timing
# <BEGIN TAG> init,set_power_analysis_mode
set_power_analysis_mode -analysis_view analysis_default

# <END TAG> init,set_power_analysis_mode
# <BEGIN TAG> init,derate_timing
source innovus-foundation-flow/timingderate.sdc

# <END TAG> init,derate_timing
# <BEGIN TAG> init,specify_spare_gates

# <END TAG> init,specify_spare_gates
#
# DEFINING MODE SETTINGS
#
# <BEGIN TAG> init,set_max_route_layer
setMaxRouteLayer 6

# <END TAG> init,set_max_route_layer
# <BEGIN TAG> init,set_design_mode
setDesignMode -process 130 -powerEffort high

# <END TAG> init,set_design_mode
puts "<FF> Plugin -> post_init_tcl"
# <BEGIN TAG> init,time_design
timeDesign -preplace -prefix preplace -outDir reports -expandedViews

# <END TAG> init,time_design
# <BEGIN TAG> init,check_legacy_design
checkDesign -all

# <END TAG> init,check_legacy_design
# <BEGIN TAG> init,check_timing
check_timing

# <END TAG> init,check_timing
#-------------------------------------------------------------


#
# SAVING RESULTS
#
um::pop_snapshot_stack
create_snapshot -name init -categories design
report_metric -file reports/metrics.html -format html
# <BEGIN TAG> init,save_design

# <begin tag init,save_design,replace_tcl>
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

# <end tag init,save_design,replace_tcl>


# <END TAG> init,save_design
# <BEGIN TAG> init,save_lec_netlist
saveNetlist checkpoints/LEC/init.v.gz

# <END TAG> init,save_lec_netlist
#if {[info exists env(VPATH)]} {exec /bin/touch $env(VPATH)/init}
ff_procs::report_time
puts "<FF> Plugin -> final_always_source_tcl"


#-------------------------------------------------------------
set vars(step) place
set vars(place,start_time) [clock seconds]
um::push_snapshot_stack
#-------------------------------------------------------------

######################################################################
# Variables affecting this step:
#---------------------------------------------------------------------
# - vars(process)
# - vars(power_effort)
# - vars(enable_ocv)
# - vars(congestion_effort)
# - vars(clock_gate_aware)
# - vars(place_io_pins)
# - vars(in_place_opt)
# - vars(fix_fanout_load)
######################################################################
# Additional variables for this step:
#---------------------------------------------------------------------
# - vars(power_ratio) "0.0 to 1.0"
# - vars(enable_aocv)
# - vars(enable_socv)
# - vars(enable_ss) "pre_place"
# - vars(size_only_file) "<file>"
# - vars(leakage_power_effort) "low or high"
# - vars(dynamic_power_effort) "low or high"
# - vars(clock_gate_aware_opt) "true"
# - vars(all_end_points) "true"
# - vars(useful_skew) "true"
# - vars(skew_buffers) "<list of buffers>"
######################################################################
# <BEGIN TAG> place,initialize_step
#
# STEP place
#
# The active analysis views are controlled by the following variables:
#---------------------------------------------------------------------
# - vars(place,active_setup_views)
# - vars(place,active_hold_views)
#
######################################################################
# set_analysis_view -setup $vars(place,active_setup_views) -hold $vars(place,active_hold_views)
#
# <BEGIN TAG> place,set_design_mode
setDesignMode -process 130 -powerEffort high

# <END TAG> place,set_design_mode
# <BEGIN TAG> prects,set_analysis_mode
setAnalysisMode -analysisType onChipVariation

# <END TAG> prects,set_analysis_mode
# <BEGIN TAG> place,set_place_mode
setPlaceMode -place_global_cong_effort medium \
   -place_global_clock_gate_aware true \
   -place_global_place_io_pins false

# <END TAG> place,set_place_mode
# <BEGIN TAG> place,set_opt_mode
setOptMode -fixFanoutLoad true

# <END TAG> place,set_opt_mode

# <END TAG> place,initialize_step
Puts "<FF> RUNNING PLACEMENT ..."
#
# RUNNING PLACEMENT
#
puts "<FF> Plugin -> pre_place_tcl"
# <BEGIN TAG> place,place_design
place_opt_design -out_dir reports -prefix place

# <END TAG> place,place_design
puts "<FF> Plugin -> post_place_tcl"
# <BEGIN TAG> place,add_tie_cells
#
# ADDING TIE CELLS
#
# <BEGIN TAG> place,set_tie_hi_lo_mode
setTieHiLoMode -cell "sky130_fd_sc_hd__conb_1"  -maxDistance 20 -maxFanout 8

# <END TAG> place,set_tie_hi_lo_mode
foreach cell {sky130_fd_sc_hd__conb_1} {
   setDontUse $cell false
}
addTieHiLo
foreach cell {sky130_fd_sc_hd__conb_1} {
   setDontUse $cell true
}

# <END TAG> place,add_tie_cells
#-------------------------------------------------------------


#
# SAVING RESULTS
#
um::pop_snapshot_stack
create_snapshot -name place -categories design
report_metric -file reports/metrics.html -format html
# <BEGIN TAG> place,save_design

# <begin tag place,save_design,replace_tcl>
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

# <end tag place,save_design,replace_tcl>


# <END TAG> place,save_design
# <BEGIN TAG> place,save_lec_netlist
saveNetlist checkpoints/LEC/place.v.gz

# <END TAG> place,save_lec_netlist
#if {[info exists env(VPATH)]} {exec /bin/touch $env(VPATH)/place}
ff_procs::report_time
puts "<FF> Plugin -> final_always_source_tcl"


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


#-------------------------------------------------------------
set vars(step) route
set vars(route,start_time) [clock seconds]
um::push_snapshot_stack
#-------------------------------------------------------------

######################################################################
# Variables affecting this step:
#---------------------------------------------------------------------
# - vars(enable_cppr)
# - vars(track_opt)
# - vars(enable_si_aware)
# - vars(multi_cut_effort)
# - vars(litho_driven_routing)
# - vars(antenna_diode)
######################################################################
# <BEGIN TAG> route,initialize_step
#
# STEP route
#
# The active analysis views are controlled by the following variables:
#---------------------------------------------------------------------
# - vars(route,active_setup_views)
# - vars(route,active_hold_views)
#
######################################################################
# set_analysis_view -setup $vars(route,active_setup_views) -hold $vars(route,active_hold_views)
#
# <BEGIN TAG> route,set_analysis_mode
setAnalysisMode -cppr both

# <END TAG> route,set_analysis_mode
# <BEGIN TAG> postroute,set_delay_cal_mode
setDelayCalMode -siAware true -engine aae

# <END TAG> postroute,set_delay_cal_mode
# <BEGIN TAG> route,set_nanoroute_mode

setNanoRouteMode -drouteUseMultiCutViaEffort high \
   -routeWithLithoDriven true \
   -routeAntennaCellName sky130_fd_sc_hd__diode_2 \
   -routeInsertAntennaDiode true

# <END TAG> route,set_nanoroute_mode

# <END TAG> route,initialize_step
# <BEGIN TAG> route,add_filler_cells
#
# ADD FILLER CELLS
#
# <BEGIN TAG> route,set_filler_mode
setFillerMode -core "sky130_fd_sc_hd__fill_8  sky130_fd_sc_hd__fill_4  sky130_fd_sc_hd__fill_2  sky130_fd_sc_hd__fill_1" \
   -corePrefix FILL

# <END TAG> route,set_filler_mode
addFiller

# <END TAG> route,add_filler_cells
Puts "<FF> RUNNING GLOBAL/DETAIL ROUTING ..."
#
# RUNNING GLOBAL/DETAIL ROUTING
#
puts "<FF> Plugin -> pre_route_tcl"
# <BEGIN TAG> route,route_secondary_pg_nets

# <END TAG> route,route_secondary_pg_nets
# <BEGIN TAG> route,check_place

# <begin tag route,check_place,skip>
#
# checkPlace reports/route,check_place.rpt
#
# <end tag route,check_place,skip>


# <BEGIN TAG> route,route_design
routeDesign

# <END TAG> route,route_design
# <BEGIN TAG> route,spread_wires
setNanoRouteMode -droutePostRouteSpreadWire true -routeWithTimingDriven false
routeDesign -wireOpt
setNanoRouteMode -droutePostRouteSpreadWire false

# <END TAG> route,spread_wires
# <BEGIN TAG> route,set_extract_rc_mode
setExtractRCMode -engine postRoute -effortLevel low

# <END TAG> route,set_extract_rc_mode
puts "<FF> Plugin -> post_route_tcl"
# <BEGIN TAG> route,time_design

# <begin tag route,time_design,skip>
#
# timeDesign -postroute -prefix route -outDir reports -expandedViews
#
# <end tag route,time_design,skip>


#-------------------------------------------------------------


#
# SAVING RESULTS
#
um::pop_snapshot_stack
create_snapshot -name route -categories design
report_metric -file reports/metrics.html -format html
# <BEGIN TAG> route,save_design

# <begin tag route,save_design,replace_tcl>
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

# <end tag route,save_design,replace_tcl>


# <END TAG> route,save_design
# <BEGIN TAG> route,save_lec_netlist
saveNetlist checkpoints/LEC/route.v.gz

# <END TAG> route,save_lec_netlist
#if {[info exists env(VPATH)]} {exec /bin/touch $env(VPATH)/route}
ff_procs::report_time
puts "<FF> Plugin -> final_always_source_tcl"


#-------------------------------------------------------------
set vars(step) postroute
set vars(postroute,start_time) [clock seconds]
um::push_snapshot_stack
#-------------------------------------------------------------

######################################################################
# Variables affecting this step:
#---------------------------------------------------------------------
# - vars(process)
# - vars(power_effort)
# - vars(postroute_extraction_effort)
# - vars(fix_hold_allow_tns_degradation)
######################################################################
# Additional variables for this step:
#---------------------------------------------------------------------
# - vars(power_ratio) "0.0 to 1.0"
# - vars(total_c_thresh)
# - vars(relative_c_thresh)
# - vars(coupling_c_thresh)
# - vars(qrc_layer_map)
# - vars(delay_cells)
# - vars(fix_hold_ignore_ios)
######################################################################
# <BEGIN TAG> postroute_hold,initialize_step
#
# STEP postroute_hold
#
# The active analysis views are controlled by the following variables:
#---------------------------------------------------------------------
# - vars(postroute_hold,active_setup_views)
# - vars(postroute_hold,active_hold_views)
#
######################################################################
# set_analysis_view -setup $vars(postroute_hold,active_setup_views) -hold $vars(postroute_hold,active_hold_views)
#
# <BEGIN TAG> postroute,set_design_mode
setDesignMode -process 130 -powerEffort high

# <END TAG> postroute,set_design_mode
# <BEGIN TAG> postroute_hold,set_extract_rc_mode
setExtractRCMode -engine postRoute -effortLevel low

# <END TAG> postroute_hold,set_extract_rc_mode
# <BEGIN TAG> postroute_hold,set_opt_mode
setOptMode -fixHoldAllowSetupTnsDegrade true

# <END TAG> postroute_hold,set_opt_mode

# <END TAG> postroute_hold,initialize_step
######################################################################
# Variables affecting this step:
#---------------------------------------------------------------------
# - vars(process)
# - vars(process)
# - vars(power_effort)
# - vars(postroute_extraction_effort)
# - vars(enable_cppr)
# - vars(enable_si_aware)
######################################################################
# Additional variables for this step:
#---------------------------------------------------------------------
# - vars(power_ratio) "0.0 to 1.0"
# - vars(total_c_thresh)
# - vars(relative_c_thresh)
# - vars(relative_c_thresh)
# - vars(qrc_layer_map)
# - vars(enable_ocv) "pre_postroute"
# - vars(enable_aocv) "true"
# - vars(enable_socv) "true"
######################################################################
# <BEGIN TAG> postroute,initialize_step
#
# STEP postroute
#
# The active analysis views are controlled by the following variables:
#---------------------------------------------------------------------
# - vars(postroute,active_setup_views)
# - vars(postroute,active_hold_views)
#
######################################################################
# set_analysis_view -setup $vars(postroute,active_setup_views) -hold $vars(postroute,active_hold_views)
#
# <BEGIN TAG> postroute,set_design_mode
setDesignMode -process 130 -powerEffort high

# <END TAG> postroute,set_design_mode
# <BEGIN TAG> postroute,set_extract_rc_mode
setExtractRCMode -engine postRoute -effortLevel low

# <END TAG> postroute,set_extract_rc_mode
# <BEGIN TAG> postroute,set_analysis_mode
setAnalysisMode -cppr both

# <END TAG> postroute,set_analysis_mode
# <BEGIN TAG> postroute,set_delay_cal_mode
setDelayCalMode -siAware true -engine aae

# <END TAG> postroute,set_delay_cal_mode

# <END TAG> postroute,initialize_step
Puts "<FF> RUNNING POST-ROUTE OPTIMIZATION ..."
#
# RUNNING POST-ROUTE OPTIMIZATION
#
puts "<FF> Plugin -> pre_postroute_tcl"
puts "<FF> Plugin -> pre_postroute_hold_tcl"
# <BEGIN TAG> postroute,opt_design
optDesign -postRoute -outDir reports -prefix postroute -setup -hold

# <END TAG> postroute,opt_design
puts "<FF> Plugin -> post_postroute_tcl"
#-------------------------------------------------------------


#
# SAVING RESULTS
#
um::pop_snapshot_stack
create_snapshot -name postroute -categories design
report_metric -file reports/metrics.html -format html
# <BEGIN TAG> postroute,save_design

# <begin tag postroute,save_design,replace_tcl>
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

# <end tag postroute,save_design,replace_tcl>


# <END TAG> postroute,save_design
# <BEGIN TAG> postroute,save_lec_netlist
saveNetlist checkpoints/LEC/postroute.v.gz

# <END TAG> postroute,save_lec_netlist
#if {[info exists env(VPATH)]} {exec /bin/touch $env(VPATH)/postroute}
ff_procs::report_time
puts "<FF> Plugin -> final_always_source_tcl"


#-------------------------------------------------------------
set vars(step) signoff
set vars(signoff,start_time) [clock seconds]
um::push_snapshot_stack
#-------------------------------------------------------------

######################################################################
# Variables affecting this step:
#---------------------------------------------------------------------
# - vars(process)
# - vars(signoff_extraction_effort)
# - vars(enable_ocv)
# - vars(enable_cppr)
######################################################################
# Additional variables for this step:
#---------------------------------------------------------------------
# - vars(total_c_thresh)
# - vars(relative_c_thresh)
# - vars(coupling_c_thresh)
# - vars(qrc_layer_map)
# - vars(delta_delay_threshold)
# - vars(celtic_settings)
# - vars(si_analysis_type)
# - vars(enable_aocv)
# - vars(enable_socv)
# - vars(enable_ss) "pre_signoff"
######################################################################
#
# STEP signoff
#
# The active analysis views are controlled by the following variables:
#---------------------------------------------------------------------
# - vars(signoff,active_setup_views)
# - vars(signoff,active_hold_views)
#
######################################################################
# set_analysis_view -setup $vars(signoff,active_setup_views) -hold $vars(signoff,active_hold_views)
#
# <BEGIN TAG> signoff,set_design_mode
setDesignMode -process 130

# <END TAG> signoff,set_design_mode
# <BEGIN TAG> signoff,set_extract_rc_mode
setExtractRCMode -coupled true -effortLevel low

# <END TAG> signoff,set_extract_rc_mode
# <BEGIN TAG> signoff,set_analysis_mode
setAnalysisMode -analysisType onChipVariation -cppr both

# <END TAG> signoff,set_analysis_mode
set vars(active_rc_corners) [list]
foreach view [concat [all_setup_analysis_views] [all_hold_analysis_views]] {
   set corner [get_delay_corner [get_analysis_view $view -delay_corner] \
      -rc_corner]
   if {[lsearch $vars(active_rc_corners) $corner] == -1 } {
      lappend vars(active_rc_corners) $corner
   }
}
Puts "<FF> ACTIVE RC CORNER LIST: $vars(active_rc_corners)"
set empty_corners [list]
foreach corner $vars(active_rc_corners) {
   if {![file exists [get_rc_corner $corner -qx_tech_file]]} {
      lappend empty_corners $corner
   }
}
if {[llength $empty_corners] == 0} {
   # <BEGIN TAG> signoff,set_extract_rc_mode
   setExtractRCMode -engine postRoute -effortLevel low -coupled true

   # <END TAG> signoff,set_extract_rc_mode
} else {
   Puts "<FF> CAN'T RUN SIGNOFF EXTRACTION BECAUSE qx_tech_file IS NOT DEFINED FOR these corners: $empty_corners"
   # <BEGIN TAG> signoff,set_extract_rc_mode
   setExtractRCMode -engine postRoute -effortLevel low -coupled true

   # <END TAG> signoff,set_extract_rc_mode
}
puts "<FF> Plugin -> pre_signoff_tcl"
Puts "<FF> RUNNING FINAL SIGNOFF ..."
#
# RUNNING FINAL SIGNOFF
#
# <BEGIN TAG> signoff,extract_rc
extractRC

# <END TAG> signoff,extract_rc
# <BEGIN TAG> signoff,dump_spef
foreach corner $vars(active_rc_corners) {
   rcOut -rc_corner $corner -spef $corner.spef.gz
}

# <END TAG> signoff,dump_spef
# <BEGIN TAG> signoff,time_design_setup
timeDesign -prefix signoff -signoff -reportOnly -outDir reports -expandedViews

# <END TAG> signoff,time_design_setup
# <BEGIN TAG> signoff,time_design_hold
timeDesign -prefix signoff \
   -signoff \
   -reportOnly \
   -hold \
   -outDir reports \
   -expandedViews

# <END TAG> signoff,time_design_hold
# <BEGIN TAG> signoff,stream_out

# <begin tag signoff,stream_out,replace_tcl>
#=========================================================================
# stream-out.tcl
#=========================================================================
# Script used to customize the GDS stream out step
#
# Author : Christopher Torng
# Date : March 26, 2018

streamOut $vars(results_dir)/$vars(design).gds.gz \
   -units 1000 \
   -mapFile $vars(gds_layer_map)

set merge_files \
[concat \
[lsort [glob -nocomplain inputs/adk/*.gds*]] \
[lsort [glob -nocomplain inputs/*.gds*]] \
]

streamOut $vars(results_dir)/$vars(design)-merged.gds \
   -units 1000 \
   -mapFile $vars(gds_layer_map) \
   -merge $merge_files


# <end tag signoff,stream_out,replace_tcl>


# <END TAG> signoff,stream_out
#
# RUNNING VERIFY COMMANDS
#
# <BEGIN TAG> signoff,summary_report

# <begin tag signoff,summary_report,replace_tcl>
#=========================================================================
# summary-report.tcl
#=========================================================================
# Script used to customize the summary report step
#
# Author : Christopher Torng
# Date : March 26, 2018

summaryReport -noHtml -outfile $vars(rpt_dir)/$vars(step).summaryReport.rpt

# <end tag signoff,summary_report,replace_tcl>


# <END TAG> signoff,summary_report
# <BEGIN TAG> signoff,verify_connectivity
verifyConnectivity -noAntenna

# <END TAG> signoff,verify_connectivity
# <BEGIN TAG> signoff,verify_geometry
verify_drc

# <END TAG> signoff,verify_geometry
# <BEGIN TAG> signoff,verify_metal_density

# <begin tag signoff,verify_metal_density,skip>
#
# verifyMetalDensity
#
# <end tag signoff,verify_metal_density,skip>


# <BEGIN TAG> signoff,verify_process_antenna
verifyProcessAntenna

# <END TAG> signoff,verify_process_antenna
puts "<FF> Plugin -> post_signoff_tcl"
#-------------------------------------------------------------


#
# SAVING RESULTS
#
um::pop_snapshot_stack
create_snapshot -name signoff -categories design
report_metric -file reports/metrics.html -format html
# <BEGIN TAG> signoff,save_design

# <begin tag signoff,save_design,replace_tcl>
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

# <end tag signoff,save_design,replace_tcl>


# <END TAG> signoff,save_design
# <BEGIN TAG> signoff,save_lec_netlist
saveNetlist checkpoints/LEC/signoff.v.gz

# <END TAG> signoff,save_lec_netlist
#if {[info exists env(VPATH)]} {exec /bin/touch $env(VPATH)/signoff}
ff_procs::report_time
puts "<FF> Plugin -> final_always_source_tcl"

exit
