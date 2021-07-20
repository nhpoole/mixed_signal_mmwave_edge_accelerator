####################################################################
# Innovus Foundation Flow Code Generator, Mon Jul 19 16:28:59 PDT 2021
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
# <BEGIN TAG> postroute,set_distribute_host
setDistributeHost -local

# <END TAG> postroute,set_distribute_host
# <BEGIN TAG> postroute,set_multi_cpu_usage
setMultiCpuUsage -localCpu 16

# <END TAG> postroute,set_multi_cpu_usage

if {$vars(restore_design)} { # <BEGIN TAG> postroute,restore_design

# <begin tag postroute,restore_design,skip>
#
# restoreDesign checkpoints/route.enc.dat sar_adc_controller
#
# <end tag postroute,restore_design,skip> }

um::enable_metrics -on
puts "<FF> Plugin -> always_source_tcl"
ff_procs::source_plug always_source_tcl

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

if {![info exists vars(single)]} {
   exit 0
}

