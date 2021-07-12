# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load cs_ring_osc_stage.mag
box 0 0 0 0
flatten cs_ring_osc_stage_flat
load cs_ring_osc_stage_flat
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
findlabel vout
port make
findlabel vin
port make
findlabel vbiasn
port make
findlabel vbiasp
port make

port vout index 1
port vin index 2
port vbiasn index 3
port vbiasp index 4
port $vdd_rail_name index 5
port $vss_rail_name index 6
save cs_ring_osc_stage_flat.mag

extract all
ext2spice lvs
ext2spice -o cs_ring_osc_stage_lvs_layout.spice

extract all
ext2sim labels on
ext2sim
#extresist tolerance 10
#extresist
ext2spice lvs
ext2spice cthresh 0.01
#ext2spice extresist on
ext2spice -o cs_ring_osc_stage_pex.spice




