# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load latched_comparator_folded.mag
box 0 0 0 0
flatten latched_comparator_folded_flat
load latched_comparator_folded_flat
box 0 0 0 0

# Power ports.
findlabel $vdd_rail_name
port make 
port use power
port class inout
findlabel $vss_rail_name
port make
port use ground
port class inout

# Cell-specific ports.
findlabel vip
port make
findlabel vim
port make
findlabel vop
port make
findlabel vom
port make
findlabel clk
port make
findlabel ibiasp
port make

port vip index 1
port vim index 2
port vop index 3
port vom index 4
port clk index 5
port ibiasp index 6
port $vdd_rail_name index 7
port $vss_rail_name index 8
save latched_comparator_folded_flat.mag

extract all
ext2spice lvs
ext2spice -o latched_comparator_folded_lvs_layout.spice

extract all
ext2sim labels on
ext2sim
extresist tolerance 10
extresist
ext2spice lvs
ext2spice cthresh 0.01
#ext2spice extresist on
ext2spice -o latched_comparator_folded_pex.spice




