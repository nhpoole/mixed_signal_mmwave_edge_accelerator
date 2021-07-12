# To treat SRAM as a blackbox
lef read $PDKPATH/libs.ref/sky130_sram_macros/lef/sky130_sram_4kbyte_1rw1r_32x1024_8.lef

gds noduplicates true
gds ordering true

# Read design
gds read user_analog_project_wrapper_merged_with_sram_gds.gds
load user_analog_project_wrapper

# Count number of DRC errors
drc catchup
drc count

quit
