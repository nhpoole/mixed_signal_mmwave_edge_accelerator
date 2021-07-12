# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load dac_8bit.mag
box 0 0 0 0
flatten dac_8bit_flat
load dac_8bit_flat
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
findlabel sample
port make
findlabel vlow
port make
findlabel vref
port make
findlabel vin
port make
findlabel q7
port make
findlabel q6
port make
findlabel q5
port make
findlabel q4
port make
findlabel q3
port make
findlabel q2
port make
findlabel q1
port make
findlabel q0
port make
findlabel ibiasn
port make
findlabel ibiasp
port make
findlabel adc_clk
port make
findlabel comp_out
port make
findlabel comp_outm
port make
findlabel vcom
port make

port sample index 1
port vlow index 4
port vref index 5
port vin index 6
port q7 index 7
port q6 index 8
port q5 index 9
port q4 index 10
port q3 index 11
port q2 index 12
port q1 index 13
port q0 index 14
port ibiasn index 15
port ibiasp index 16
port adc_clk index 17
port comp_out index 18
port comp_outm index 19
port vcom index 20
port $vdd_rail_name index 2
port $vss_rail_name index 3
save dac_8bit_flat.mag

extract all
ext2spice lvs
ext2spice -o dac_8bit_lvs_layout.spice

extract all
ext2sim labels on
ext2sim
#extresist tolerance 10
#extresist
ext2spice lvs
ext2spice cthresh 0.01
#ext2spice extresist on
ext2spice -o dac_8bit_pex.spice




