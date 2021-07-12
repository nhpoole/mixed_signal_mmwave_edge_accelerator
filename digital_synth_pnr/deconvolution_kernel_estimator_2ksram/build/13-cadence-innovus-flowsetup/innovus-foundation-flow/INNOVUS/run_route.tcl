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
# <BEGIN TAG> route,set_distribute_host
setDistributeHost -local

# <END TAG> route,set_distribute_host
# <BEGIN TAG> route,set_multi_cpu_usage
setMultiCpuUsage -localCpu 16

# <END TAG> route,set_multi_cpu_usage

if {$vars(restore_design)} { # <BEGIN TAG> route,restore_design

# <begin tag route,restore_design,skip>
#
# restoreDesign checkpoints/postcts_hold.enc.dat deconv_kernel_estimator_top_level
#
# <end tag route,restore_design,skip> }

um::enable_metrics -on
puts "<FF> Plugin -> always_source_tcl"
ff_procs::source_plug always_source_tcl

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

if {![info exists vars(single)]} {
   exit 0
}

