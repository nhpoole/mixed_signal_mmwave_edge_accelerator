cif istyle sky130(vendor)
#lef read inputs/sky130_sram_4kbyte_1rw1r_32x1024_8.lef
lef read inputs/sky130_sram_2kbyte_1rw1r_32x512_8.lef

gds noduplicates true
gds order true

gds flatten true
gds read ./inputs/design_merged.gds
load $::env(design_name)
select top cell
extract no all
extract do local
extract unique
extract
ext2spice lvs
ext2spice $::env(design_name).ext
exit
