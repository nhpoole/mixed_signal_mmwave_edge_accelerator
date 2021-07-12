# LVS and parasitic extraction.

load metal_resistor_test.mag
box 0 0 0 0
flatten metal_resistor_test
load metal_resistor_test
box 0 0 0 0

# Cell-specific ports.
findlabel term1
port make
findlabel term2
port make

port term1 index 1
port term2 index 2
save metal_resistor_test_flat.mag

extract all
ext2spice lvs
ext2spice -o metal_resistor_test_lvs_layout.spice


