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
# <BEGIN TAG> debug,set_distribute_host
setDistributeHost -local

# <END TAG> debug,set_distribute_host
# <BEGIN TAG> debug,set_multi_cpu_usage
setMultiCpuUsage -localCpu 16

# <END TAG> debug,set_multi_cpu_usage

#-------------------------------------------------------------
set vars(step) debug
set vars(debug,start_time) [clock seconds]
um::push_snapshot_stack
#-------------------------------------------------------------


global env
if {[info exists env(STEP)]} {

   if {$vars(restore_design)} { # <BEGIN TAG> $env(STEP),restore_design
   restoreDesign checkpoints/$env(STEP).enc.dat sar_adc_controller

   # <END TAG> $env(STEP),restore_design }

   um::enable_metrics -on
   puts "<FF> Plugin -> always_source_tcl"
   ff_procs::source_plug always_source_tcl

}
win
#-------------------------------------------------------------


