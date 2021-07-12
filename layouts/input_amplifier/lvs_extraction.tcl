# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load input_amplifier.mag
box 0 0 0 0
flatten input_amplifier_flat
load input_amplifier_flat
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
findlabel vincm
port make
findlabel vhpf
port make
findlabel gain_ctrl_0
port make
findlabel gain_ctrl_1
port make
findlabel vocm
port make
findlabel ibiasn1
port make
findlabel vom
port make
findlabel vop
port make
findlabel ibiasn2
port make
findlabel rst_n
port make

port vincm index 3
port vhpf index 4
port gain_ctrl_0 index 5
port gain_ctrl_1 index 6
port vocm index 7
port ibiasn1 index 8
port vom index 9
port vop index 10
port ibiasn2 index 11
port rst_n index 12
port $vdd_rail_name index 1
port $vss_rail_name index 2
save input_amplifier_flat.mag

extract all
ext2spice lvs
ext2spice -o input_amplifier_lvs_layout.spice

extract all
ext2sim labels on
ext2sim
#extresist tolerance 10
#extresist
ext2spice lvs
ext2spice cthresh 0.01
#ext2spice extresist on
ext2spice -o input_amplifier_pex.spice




