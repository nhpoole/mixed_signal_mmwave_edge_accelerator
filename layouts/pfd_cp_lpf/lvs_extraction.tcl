# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load pfd_cp_lpf.mag
box 0 0 0 0
flatten pfd_cp_lpf_flat
load pfd_cp_lpf_flat
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
findlabel vin_div
port make
findlabel vsig_in
port make
findlabel vcp
port make
findlabel ibiasn
port make

port vin_div index 3
port vsig_in index 4
port vcp index 5
port ibiasn index 6
port $vdd_rail_name index 1
port $vss_rail_name index 2
save pfd_cp_lpf_flat.mag

extract all
ext2spice lvs
ext2spice -o pfd_cp_lpf_lvs_layout.spice

extract all
ext2sim labels on
ext2sim
#extresist tolerance 10
#extresist
ext2spice lvs
ext2spice cthresh 0.01
#ext2spice extresist on
ext2spice -o pfd_cp_lpf_pex.spice




