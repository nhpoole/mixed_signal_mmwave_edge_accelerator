# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load pulse_generator.mag
box 0 0 0 0
flatten pulse_generator_flat
load pulse_generator_flat
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
findlabel trigb
port make
findlabel clk
port make
findlabel pulse
port make

port trigb index 1
port clk index 4
port pulse index 5
port $vdd_rail_name index 2
port $vss_rail_name index 3
save pulse_generator_flat.mag

extract all
ext2spice lvs
ext2spice -o pulse_generator_lvs_layout.spice

extract all
ext2sim labels on
ext2sim
#extresist tolerance 10
#extresist
ext2spice lvs
ext2spice cthresh 0.01
#ext2spice extresist on
ext2spice -o pulse_generator_pex.spice




