# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load low_freq_pll.mag
box 0 0 0 0
flatten low_freq_pll_flat
load low_freq_pll_flat
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
findlabel vsigin
port make
findlabel ibiasn
port make
findlabel vcp
port make

port vsigin index 3
port ibiasn index 4
port vcp index 5
port $vdd_rail_name index 1
port $vss_rail_name index 2
save low_freq_pll_flat.mag

extract all
ext2spice lvs
ext2spice -o low_freq_pll_lvs_layout.spice

extract all
ext2sim labels on
ext2sim
#extresist tolerance 10
#extresist
ext2spice lvs
ext2spice cthresh 0.01
#ext2spice extresist on
ext2spice -o low_freq_pll_pex.spice




