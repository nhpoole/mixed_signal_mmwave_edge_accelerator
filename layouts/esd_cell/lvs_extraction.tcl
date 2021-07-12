# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load esd_cell.mag
box 0 0 0 0
flatten esd_cell_flat
load esd_cell_flat
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
findlabel clamp
port make

port clamp index 1
port $vdd_rail_name index 2
port $vss_rail_name index 3
save esd_cell_flat.mag

extract all
ext2spice lvs
ext2spice -o esd_cell_lvs_layout.spice




