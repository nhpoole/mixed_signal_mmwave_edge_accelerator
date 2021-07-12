# To treat SRAM as a blackbox
lef read ~/PDKS/sky130A/libs.ref/sky130_sram_macros/lef/sky130_sram_4kbyte_1rw1r_32x1024_8.lef
#lef read ~/PDKS/sky130A/libs.ref/sky130_sram_macros/lef/sky130_sram_8kbyte_1rw1r_32x2048_8.lef
#lef read sky130_sram_8kbyte_1rw1r_32x2048_8.lef

gds noduplicates true
gds ordering true

# Read design
gds read inputs/design_merged.gds
load $::env(design_name)

# Count number of DRC errors
drc catchup
drc count

quit
