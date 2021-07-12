# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load cs_ring_osc.mag
box 0 0 0 0
flatten cs_ring_osc_flat
load cs_ring_osc_flat
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
findlabel vctrl
port make
findlabel voscbuf
port make
findlabel vosc
port make

port vctrl index 3
port voscbuf index 4
port vosc index 5
port $vdd_rail_name index 1
port $vss_rail_name index 2
save cs_ring_osc_flat.mag

extract all
ext2spice lvs
ext2spice -o cs_ring_osc_lvs_layout.spice

extract all
ext2sim labels on
ext2sim
#extresist tolerance 10
#extresist
ext2spice lvs
ext2spice cthresh 0.01
#ext2spice extresist on
ext2spice -o cs_ring_osc_pex.spice




