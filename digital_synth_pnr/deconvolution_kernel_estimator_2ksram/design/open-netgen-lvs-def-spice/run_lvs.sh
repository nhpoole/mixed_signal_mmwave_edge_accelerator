export MAGIC_EXT_USE_GDS=1
netgen -batch lvs "inputs/design_extracted.spice "$design_name"" "design_lvs.spice "$design_name"" netgen_blackbox_setup.tcl outputs/lvs_results.log
