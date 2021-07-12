#=========================================================================
# floorplan.tcl
#=========================================================================
# Author : Nikhil Poole
# Date   : June 10, 2021

#-------------------------------------------------------------------------
# Floorplan variables
#-------------------------------------------------------------------------

# Set the floorplan to target a reasonable placement density with a good
# aspect ratio (height:width). An aspect ratio of 2.0 here will make a
# rectangular chip with a height that is twice the width.

set core_aspect_ratio   1.00;   # Aspect ratio 1.0 for a square chip
set core_density_target 0.6;    # Placement density target of 60% (reasonable in presence of SRAM halos)

# Make room in the floorplan for the core power ring

set pwr_net_list {VDD VSS}; # List of power nets in the core power ring

set M1_min_width   [dbGet [dbGetLayerByZ 1].minWidth]
set M1_min_spacing [dbGet [dbGetLayerByZ 1].minSpacing]

set savedvars(p_ring_width)   [expr 48 * $M1_min_width];   # Arbitrary!
set savedvars(p_ring_spacing) [expr 24 * $M1_min_spacing]; # Arbitrary!

# Core bounding box margins

set core_margin_t [expr ([llength $pwr_net_list] * ($savedvars(p_ring_width) + $savedvars(p_ring_spacing))) + $savedvars(p_ring_spacing)]
set core_margin_b [expr ([llength $pwr_net_list] * ($savedvars(p_ring_width) + $savedvars(p_ring_spacing))) + $savedvars(p_ring_spacing)]
set core_margin_r [expr ([llength $pwr_net_list] * ($savedvars(p_ring_width) + $savedvars(p_ring_spacing))) + $savedvars(p_ring_spacing)]
set core_margin_l [expr ([llength $pwr_net_list] * ($savedvars(p_ring_width) + $savedvars(p_ring_spacing))) + $savedvars(p_ring_spacing)]

#-------------------------------------------------------------------------
# Floorplan
#-------------------------------------------------------------------------

# Calling floorPlan with the "-r" flag sizes the floorplan according to
# the core aspect ratio and a density target (60% is a reasonable
# density with SRAM halos included).
#

floorPlan -r $core_aspect_ratio $core_density_target \
             $core_margin_l $core_margin_b $core_margin_r $core_margin_t

setFlipping s
addHaloToBlock 10.88 10.88 10.88 10.88 -allBlock

placeInstance phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_0 116.5 184.7
deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_0
flipOrRotateObject -rotate R90
deselectAll

placeInstance phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_1 856.5 184.7
deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_1
flipOrRotateObject -rotate R90
flipOrRotateObject -flip MY
deselectAll

placeInstance tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_0 116.5 950.8
deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_0
flipOrRotateObject -flip MY
deselectAll

placeInstance tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_1 116.5 1670.8
deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_1
flipOrRotateObject -flip MX
flipOrRotateObject -flip MY
deselectAll

placeInstance deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_0 1031.5 1638.7
deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_0
flipOrRotateObject -rotate R90
deselectAll

placeInstance deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_1 1791.5 1638.7
deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_1
flipOrRotateObject -rotate R90
flipOrRotateObject -flip MY
deselectAll

placeInstance deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_0 1760.5 184.7
deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_0
flipOrRotateObject -flip MY
deselectAll

placeInstance deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_1 1760.5 904.7
deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_1
flipOrRotateObject -flip MX
flipOrRotateObject -flip MY
deselectAll

# Use automatic floorplan synthesis to pack macros (e.g., SRAMs) together
#planDesign

# Create a routing blockage on li1 layer over the entire chip area, so that 
# Innovus does not use this layer for routing

createRouteBlk -box {117.12 185.32 781.98 873.98} -layer {li1}
createRouteBlk -box {857.12 185.32 1521.98 873.98} -layer {li1}
createRouteBlk -box {117.12 951.42 805.78 1616.28} -layer {li1}
createRouteBlk -box {117.12 1671.42 805.78 2336.28} -layer {li1}
createRouteBlk -box {1032.12 1639.32 1696.98 2327.98} -layer {li1}
createRouteBlk -box {1792.12 1639.32 2456.98 2327.98} -layer {li1}
createRouteBlk -box {1761.12 185.32 2449.78 850.18} -layer {li1}
createRouteBlk -box {1761.12 905.32 2449.78 1570.18} -layer {li1}
