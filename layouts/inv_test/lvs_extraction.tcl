# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load inv_test.mag
box 0 0 0 0
flatten inv_test_flat
load inv_test_flat
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
findlabel out
port make
findlabel out2
port make
findlabel in
port make

port in index 2
port out index 4
port out2 index 5
port $vdd_rail_name index 1
port $vss_rail_name index 3
save inv_test_flat.mag

extract all
#ext2sim labels on
#ext2sim
#extresist tolerance 10
#extresist
ext2spice lvs
ext2spice -o inv_test_lvs_layout.spice
#ext2spice cthresh 0.01
#ext2spice extresist on
#ext2spice -o diff_fold_casc_ota_pex.spice




