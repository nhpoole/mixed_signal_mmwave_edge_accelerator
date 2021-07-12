gds noduplicates yes
#load $PDKPATH/libs.ref/sky130_sram_macros/maglef/sky130_sram_4kbyte_1rw1r_32x1024_8.mag
lef read $PDKPATH/libs.ref/sky130_sram_macros/lef/sky130_sram_4kbyte_1rw1r_32x1024_8.lef

# Read design
#gds read user_analog_project_wrapper_merged_with_sram_gds.gds
gds read user_analog_project_wrapper.gds
load user_analog_project_wrapper

select top cell
expand
drc euclidean on
drc style drc(full)
drc check

quit
