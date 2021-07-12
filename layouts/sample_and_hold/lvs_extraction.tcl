# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load sample_and_hold.mag
box 0 0 0 0
flatten sample_and_hold_flat
load sample_and_hold_flat
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
findlabel vin
port make
findlabel clk
port make
findlabel ibiasn
port make
findlabel vout
port make
findlabel vhold
port make

port vin index 1
port clk index 2
port ibiasn index 5
port vout index 6
port vhold index 7
port $vdd_rail_name index 3
port $vss_rail_name index 4
save sample_and_hold_flat.mag

extract all
ext2spice lvs
ext2spice -o sample_and_hold_lvs_layout.spice

extract all
ext2sim labels on
ext2sim
#extresist tolerance 10
#extresist
ext2spice lvs
ext2spice cthresh 0.01
#ext2spice extresist on
ext2spice -o sample_and_hold_pex.spice




