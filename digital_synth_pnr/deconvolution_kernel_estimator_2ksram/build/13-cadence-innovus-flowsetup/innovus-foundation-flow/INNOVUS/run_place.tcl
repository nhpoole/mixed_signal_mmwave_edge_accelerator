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
# <BEGIN TAG> place,set_distribute_host
setDistributeHost -local

# <END TAG> place,set_distribute_host
# <BEGIN TAG> place,set_multi_cpu_usage
setMultiCpuUsage -localCpu 16

# <END TAG> place,set_multi_cpu_usage

if {$vars(restore_design)} { # <BEGIN TAG> place,restore_design

# <begin tag place,restore_design,skip>
#
# restoreDesign checkpoints/init.enc.dat deconv_kernel_estimator_top_level
#
# <end tag place,restore_design,skip> }

um::enable_metrics -on
puts "<FF> Plugin -> always_source_tcl"
ff_procs::source_plug always_source_tcl

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

if {![info exists vars(single)]} {
   exit 0
}

