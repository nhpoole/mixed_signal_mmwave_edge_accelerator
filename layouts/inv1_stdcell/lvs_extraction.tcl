# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load inv1_stdcell.mag
box 0 0 0 0
flatten inv1_stdcell_flat
load inv1_stdcell_flat
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
findlabel A
port make
findlabel Y
port make

port A index 1
port Y index 2
port $vdd_rail_name index 3
port $vss_rail_name index 4
save inv1_stdcell_flat.mag

extract all
ext2spice lvs
ext2spice -o inv1_stdcell_lvs_layout.spice

extract all
ext2sim labels on
ext2sim
#extresist tolerance 10
#extresist
ext2spice lvs
ext2spice cthresh 0.01
#ext2spice extresist on
ext2spice -o inv1_stdcell_pex.spice




