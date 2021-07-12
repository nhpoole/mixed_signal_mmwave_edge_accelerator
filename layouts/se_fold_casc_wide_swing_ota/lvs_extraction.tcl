# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load se_fold_casc_wide_swing_ota.mag
box 0 0 0 0
flatten se_fold_casc_wide_swing_ota_flat
load se_fold_casc_wide_swing_ota_flat
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
findlabel vo
port make
findlabel ibiasn
port make

port vip index 1
port vim index 2
port vo index 3
port ibiasn index 4
port $vdd_rail_name index 5
port $vss_rail_name index 6
save se_fold_casc_wide_swing_ota_flat.mag

extract all
ext2spice lvs
ext2spice -o se_fold_casc_wide_swing_ota_lvs_layout.spice

extract all
ext2sim labels on
ext2sim
#extresist tolerance 10
#extresist
ext2spice lvs
ext2spice cthresh 0.01
#ext2spice extresist on
ext2spice -o se_fold_casc_wide_swing_ota_pex.spice




