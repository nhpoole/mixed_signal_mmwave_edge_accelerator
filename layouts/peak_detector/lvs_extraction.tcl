# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load peak_detector.mag
box 0 0 0 0
flatten peak_detector_flat
load peak_detector_flat
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
findlabel vin
port make
findlabel ibiasn1
port make
findlabel vpeak_out
port make
findlabel vpeakh
port make
findlabel rst
port make
findlabel ibiasn2
port make

port vin index 1
port ibiasn1 index 2
port vpeak_out index 3
port vpeakh index 6
port rst index 7
port ibiasn2 index 8
port $vdd_rail_name index 4
port $vss_rail_name index 5
save peak_detector_flat.mag

extract all
ext2spice lvs
ext2spice -o peak_detector_lvs_layout.spice

extract all
ext2sim labels on
ext2sim
#extresist tolerance 10
#extresist
ext2spice lvs
ext2spice cthresh 0.01
#ext2spice extresist on
ext2spice -o peak_detector_pex.spice




