#=========================================================================
# floorplan.tcl
#=========================================================================
# Author : Nikhil Poole
# Date   : July 9, 2021

#-------------------------------------------------------------------------
# Floorplan variables
#-------------------------------------------------------------------------

# Set the floorplan to target a reasonable placement density with a good
# aspect ratio (height:width). An aspect ratio of 2.0 here will make a
# rectangular chip with a height that is twice the width.

set core_aspect_ratio   1.00;       # Aspect ratio 1.0 for a square chip
set core_density_target 0.6;        # Placement density target of 60% (reasonable in presence of SRAM halos)
set width               2568.64;    # Die width.
set height              2564.96;    # Die height.

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

#floorPlan -r $core_aspect_ratio $core_density_target \
#             $core_margin_l $core_margin_b $core_margin_r $core_margin_t
floorPlan -d $width $height \
             $core_margin_l $core_margin_b $core_margin_r $core_margin_t

setFlipping s
addHaloToBlock 10.88 10.88 10.88 10.88 -allBlock

# phase_vec_sram

placeInstance phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0 107.04 105.2
deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0
flipOrRotateObject -rotate R90
deselectAll

placeInstance phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1 565.34 105.2
deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1
flipOrRotateObject -rotate R90
flipOrRotateObject -flip MY
deselectAll

placeInstance phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2 107.04 830.06
deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2
flipOrRotateObject -rotate R90
deselectAll

placeInstance phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3 565.34 830.06
deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3
flipOrRotateObject -rotate R90
flipOrRotateObject -flip MY
deselectAll

# tf_coeff_sram

placeInstance tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0 107.04 1584.92
deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0
flipOrRotateObject -flip MX
deselectAll

placeInstance tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1 831.9 1584.92
deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1
flipOrRotateObject -flip MX
deselectAll

placeInstance tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2 107.04 2043.22
deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2
deselectAll

placeInstance tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3 831.9 2043.22
deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3
deselectAll

# deconv_kernel_magnitude_sram

placeInstance deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0 1586.76 1051.8
deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0
flipOrRotateObject -rotate R90
deselectAll

placeInstance deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1 2045.06 1051.8
deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1
flipOrRotateObject -rotate R90
flipOrRotateObject -flip MY
deselectAll

placeInstance deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2 1586.76 1776.66
deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2
flipOrRotateObject -rotate R90
deselectAll

placeInstance deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3 2045.06 1776.66
deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3
flipOrRotateObject -rotate R90
flipOrRotateObject -flip MY
deselectAll

# deconv_kernel_phase_sram

placeInstance deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0 1053.64 105.2
deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0
flipOrRotateObject -flip MX
deselectAll

placeInstance deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1 1778.5 105.2
deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1
flipOrRotateObject -flip MX
deselectAll

placeInstance deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2 1053.64 563.5
deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2
deselectAll

placeInstance deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3 1778.5 563.5
deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3
deselectAll

# Use automatic floorplan synthesis to pack macros (e.g., SRAMs) together.
#planDesign

# Create a routing blockage on li1 layer over the entire chip area, so that 
# Innovus does not use this layer for routing.

# phase_vec_sram
createRouteBlk -box {107.66 105.82 522.96 787.68} -layer {li1}
createRouteBlk -box {565.96 105.82 981.26 787.68} -layer {li1}
createRouteBlk -box {107.66 830.68 522.96 1512.54} -layer {li1}
createRouteBlk -box {565.96 830.68 981.26 1512.54} -layer {li1}

# tf_coeff_sram
createRouteBlk -box {107.66 1585.54 789.52 2000.84} -layer {li1}
createRouteBlk -box {832.52 1585.54 1514.38 2000.84} -layer {li1}
createRouteBlk -box {107.66 2043.84 789.52 2459.14} -layer {li1}
createRouteBlk -box {832.52 2043.84 1514.38 2459.14} -layer {li1}

# deconv_kernel_magnitude_sram
createRouteBlk -box {1587.38 1052.42 2002.68 1734.28} -layer {li1}
createRouteBlk -box {2045.68 1052.42 2460.98 1734.28} -layer {li1}
createRouteBlk -box {1587.38 1777.28 2002.68 2459.14} -layer {li1}
createRouteBlk -box {2045.68 1777.28 2460.98 2459.14} -layer {li1}

# deconv_kernel_phase_sram
createRouteBlk -box {1054.26 105.82 1736.12 521.12} -layer {li1}
createRouteBlk -box {1779.12 105.82 2460.98 521.12} -layer {li1}
createRouteBlk -box {1054.26 564.12 1736.12 979.42} -layer {li1}
createRouteBlk -box {1779.12 564.12 2460.98 979.42} -layer {li1}