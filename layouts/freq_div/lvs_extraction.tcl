# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load freq_div.mag
box 0 0 0 0
flatten freq_div_flat
load freq_div_flat
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
findlabel vout
port make

port vin index 1
port vout index 2
port $vdd_rail_name index 3
port $vss_rail_name index 4
save freq_div_flat.mag

extract all
ext2spice lvs
ext2spice -o freq_div_lvs_layout.spice

extract all
ext2sim labels on
ext2sim
#extresist tolerance 10
#extresist
ext2spice lvs
ext2spice cthresh 0.01
#ext2spice extresist on
ext2spice -o freq_div_pex.spice




