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

if {![info exists vars(single)]} {
   exit 0
}

