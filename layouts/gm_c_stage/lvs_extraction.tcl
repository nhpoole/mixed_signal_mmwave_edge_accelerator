# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load gm_c_stage.mag
box 0 0 0 0
flatten gm_c_stage_flat
load gm_c_stage_flat
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
findlabel vocm
port make
findlabel vop
port make
findlabel vom
port make
findlabel ibiasn
port make

port vip index 1
port vim index 2
port vocm index 3
port vop index 4
port vom index 5
port ibiasn index 6
port $vdd_rail_name index 7
port $vss_rail_name index 8
save gm_c_stage_flat.mag

extract all
ext2spice lvs
ext2spice -o gm_c_stage_lvs_layout.spice

extract all
ext2sim labels on
ext2sim
#extresist tolerance 10
#extresist
ext2spice lvs
ext2spice cthresh 0.01
#ext2spice extresist on
ext2spice -o gm_c_stage_pex.spice




