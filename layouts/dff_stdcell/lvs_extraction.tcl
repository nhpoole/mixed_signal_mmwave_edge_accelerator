# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load dff_stdcell.mag
box 0 0 0 0
flatten dff_stdcell_flat
load dff_stdcell_flat
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
findlabel D
port make
findlabel CLK
port make
findlabel Q
port make
findlabel QB
port make

port D index 1
port CLK index 2
port Q index 3
port QB index 4
port $vdd_rail_name index 5
port $vss_rail_name index 6
save dff_stdcell_flat.mag

extract all
ext2spice lvs
ext2spice -o dff_stdcell_lvs_layout.spice

extract all
ext2sim labels on
ext2sim
#extresist tolerance 10
#extresist
ext2spice lvs
ext2spice cthresh 0.01
#ext2spice extresist on
ext2spice -o dff_stdcell_pex.spice




