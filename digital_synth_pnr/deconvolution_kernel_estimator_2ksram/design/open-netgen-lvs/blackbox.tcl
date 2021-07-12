# Set up SRAM instances as black-box cells
#model {sky130_sram_8kbyte_1rw1r_32x2048_8 inputs/design_extracted.spice} blackbox
#model {sky130_sram_8kbyte_1rw1r_32x2048_8 design_lvs.spice} blackbox
#model {sky130_sram_4kbyte_1rw1r_32x1024_8 inputs/design_extracted.spice} blackbox
#model {sky130_sram_4kbyte_1rw1r_32x1024_8 design_lvs.spice} blackbox
model {sky130_sram_2kbyte_1rw1r_32x512_8 inputs/design_extracted.spice} blackbox
model {sky130_sram_2kbyte_1rw1r_32x512_8 design_lvs.spice} blackbox
