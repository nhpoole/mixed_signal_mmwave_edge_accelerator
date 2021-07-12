# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load diff_to_se_converter.mag
box 0 0 0 0
flatten diff_to_se_converter_flat
load diff_to_se_converter_flat
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
findlabel vdiffp
port make
findlabel vdiffm
port make
findlabel vocm
port make
findlabel vse
port make
findlabel ibiasn
port make
findlabel rst_n
port make

port vdiffp index 1
port vdiffm index 2
port vocm index 5
port vse index 6
port ibiasn index 7
port rst_n index 8
port $vdd_rail_name index 3
port $vss_rail_name index 4
save diff_to_se_converter_flat.mag

extract all
ext2spice lvs
ext2spice -o diff_to_se_converter_lvs_layout.spice

extract all
ext2sim labels on
ext2sim
#extresist tolerance 10
#extresist
ext2spice lvs
ext2spice cthresh 0.01
#ext2spice extresist on
ext2spice -o diff_to_se_converter_pex.spice




