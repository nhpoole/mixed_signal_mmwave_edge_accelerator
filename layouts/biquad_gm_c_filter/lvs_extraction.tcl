# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load biquad_gm_c_filter.mag
box 0 0 0 0
flatten biquad_gm_c_filter_flat
load biquad_gm_c_filter_flat
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
findlabel ibiasn1
port make
findlabel vocm
port make
findlabel vfiltp
port make
findlabel vfiltm
port make
findlabel vintp
port make
findlabel vintm
port make
findlabel ibiasn2
port make
findlabel ibiasn3
port make
findlabel ibiasn4
port make

port vip index 3
port vim index 4
port ibiasn1 index 5
port vocm index 6
port vfiltp index 7
port vfiltm index 8
port vintp index 9
port vintm index 10
port ibiasn2 index 11
port ibiasn3 index 12
port ibiasn4 index 13
port $vdd_rail_name index 1
port $vss_rail_name index 2
save biquad_gm_c_filter_flat.mag

extract all
ext2spice lvs
ext2spice -o biquad_gm_c_filter_lvs_layout.spice

extract all
ext2sim labels on
ext2sim
#extresist tolerance 10
#extresist
ext2spice lvs
ext2spice cthresh 0.01
#ext2spice extresist on
ext2spice -o biquad_gm_c_filter_pex.spice




