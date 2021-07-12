####################################################################
# Innovus Foundation Flow Code Generator, Sun Jul 11 16:15:52 PDT 2021
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
# <BEGIN TAG> signoff,set_distribute_host
setDistributeHost -local

# <END TAG> signoff,set_distribute_host
# <BEGIN TAG> signoff,set_multi_cpu_usage
setMultiCpuUsage -localCpu 16

# <END TAG> signoff,set_multi_cpu_usage

if {$vars(restore_design)} { # <BEGIN TAG> signoff,restore_design

# <begin tag signoff,restore_design,skip>
#
# restoreDesign checkpoints/postroute.enc.dat deconv_kernel_estimator_top_level
#
# <end tag signoff,restore_design,skip> }

um::enable_metrics -on
puts "<FF> Plugin -> always_source_tcl"
ff_procs::source_plug always_source_tcl

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

if {![info exists vars(single)]} {
   exit 0
}

