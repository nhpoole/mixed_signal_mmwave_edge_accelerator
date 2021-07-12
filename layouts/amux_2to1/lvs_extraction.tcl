# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load amux_2to1.mag
box 0 0 0 0
flatten amux_2to1_flat
load amux_2to1_flat
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
findlabel B
port make
findlabel SEL
port make
findlabel Y
port make

port A index 1
port B index 2
port SEL index 3
port Y index 4
port $vdd_rail_name index 5
port $vss_rail_name index 6
save amux_2to1_flat.mag

extract all
ext2spice lvs
ext2spice -o amux_2to1_lvs_layout.spice

extract all
ext2sim labels on
ext2sim
#extresist tolerance 10
#extresist
ext2spice lvs
ext2spice cthresh 0.01
#ext2spice extresist on
ext2spice -o amux_2to1_pex.spice




