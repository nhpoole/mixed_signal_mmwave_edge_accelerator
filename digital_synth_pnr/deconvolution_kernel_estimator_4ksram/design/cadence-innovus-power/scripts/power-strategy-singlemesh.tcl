#=========================================================================
# power-strategy-singlemesh.tcl
#=========================================================================
# This script implements a single power mesh on the upper metal layers.
# Note that M2 is expected to be vertical, and the lower metal layer of
# the power mesh is expected to be horizontal.
#
# Author : Nikhil Poole
# Date   : June 11, 2021

#-------------------------------------------------------------------------
# Stdcell power rail preroute
#-------------------------------------------------------------------------
# Generate horizontal stdcell preroutes

sroute -nets {VDD VSS}

#-------------------------------------------------------------------------
# Shorter names from the ADK
#-------------------------------------------------------------------------

set pmesh_bot $ADK_POWER_MESH_BOT_LAYER
set pmesh_top $ADK_POWER_MESH_TOP_LAYER

#-------------------------------------------------------------------------
# Power ring
#-------------------------------------------------------------------------

addRing -nets {VDD VSS} -type core_rings -follow core   \
        -layer [list top  $pmesh_top bottom $pmesh_top  \
                     left $pmesh_bot right  $pmesh_bot] \
        -width $savedvars(p_ring_width)                 \
        -spacing $savedvars(p_ring_spacing)             \
        -offset $savedvars(p_ring_spacing)              \
        -extend_corner {tl tr bl br lt lb rt rb}

deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_1
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_1
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_1
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_1
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

#-------------------------------------------------------------------------
# Power mesh bottom settings (vertical)
#-------------------------------------------------------------------------
# - pmesh_bot_str_width            : 8X thickness compared to 3 * M1 width
# - pmesh_bot_str_pitch            : Arbitrarily choosing the stripe pitch
# - pmesh_bot_str_intraset_spacing : Space between VSS/VDD, choosing
#                                    constant pitch across VSS/VDD stripes
# - pmesh_bot_str_interset_pitch   : Pitch between same-signal stripes

# Get M1 min width and signal routing pitch as defined in the LEF

set M1_min_width    [dbGet [dbGetLayerByZ 2].minWidth]
set M1_route_pitchX [dbGet [dbGetLayerByZ 2].pitchX]

# Bottom stripe params

set pmesh_bot_str_width [expr  8 *  3 * $M1_min_width   ]
set pmesh_bot_str_pitch [expr 4 * 10 * $M1_route_pitchX]

set pmesh_bot_str_intraset_spacing [expr $pmesh_bot_str_pitch - $pmesh_bot_str_width]
set pmesh_bot_str_interset_pitch   [expr 4*$pmesh_bot_str_pitch]

setViaGenMode -reset
setViaGenMode -viarule_preference default
setViaGenMode -ignore_DRC false

setAddStripeMode -reset
setAddStripeMode -stacked_via_bottom_layer met1 \
                 -stacked_via_top_layer    $pmesh_top \
                 -break_at {  block_ring  }

# Add the stripes
#
# Use -start to offset the stripes slightly away from the core edge.
# Allow same-layer jogs to connect stripes to the core ring if some
# blockage is in the way (e.g., connections from core ring to pads).
# Restrict any routing around blockages to use only layers for power.

addStripe -nets {VSS VDD} -layer $pmesh_bot -direction vertical \
    -width $pmesh_bot_str_width                                 \
    -spacing $pmesh_bot_str_intraset_spacing                    \
    -set_to_set_distance $pmesh_bot_str_interset_pitch          \
    -max_same_layer_jog_length $pmesh_bot_str_pitch             \
    -padcore_ring_bottom_layer_limit $pmesh_bot                 \
    -padcore_ring_top_layer_limit $pmesh_top                    \
    -start [expr 2*$pmesh_bot_str_pitch]

#-------------------------------------------------------------------------
# Power mesh top settings (horizontal)
#-------------------------------------------------------------------------
# - pmesh_top_str_width            : 8X thickness compared to 3 * M1 width
# - pmesh_top_str_pitch            : Arbitrarily choosing the stripe pitch
# - pmesh_top_str_intraset_spacing : Space between VSS/VDD, choosing
#                                    constant pitch across VSS/VDD stripes
# - pmesh_top_str_interset_pitch   : Pitch between same-signal stripes

set pmesh_top_str_width [expr  8 *  3 * $M1_min_width   ]
set pmesh_top_str_pitch [expr 4 * 10 * $M1_route_pitchX]

set pmesh_top_str_intraset_spacing [expr $pmesh_top_str_pitch - $pmesh_top_str_width]
set pmesh_top_str_interset_pitch   [expr 4*$pmesh_top_str_pitch]

setViaGenMode -reset
setViaGenMode -viarule_preference default
setViaGenMode -ignore_DRC false

setAddStripeMode -reset
setAddStripeMode -stacked_via_bottom_layer $pmesh_bot \
                 -stacked_via_top_layer    $pmesh_top \
                 -break_at {  block_ring  }

# Add the stripes
#
# Use -start to offset the stripes slightly away from the core edge.
# Allow same-layer jogs to connect stripes to the core ring if some
# blockage is in the way (e.g., connections from core ring to pads).
# Restrict any routing around blockages to use only layers for power.

addStripe -nets {VSS VDD} -layer $pmesh_top -direction horizontal \
    -width $pmesh_top_str_width                                   \
    -spacing $pmesh_top_str_intraset_spacing                      \
    -set_to_set_distance $pmesh_top_str_interset_pitch            \
    -max_same_layer_jog_length $pmesh_top_str_pitch               \
    -padcore_ring_bottom_layer_limit $pmesh_bot                   \
    -padcore_ring_top_layer_limit $pmesh_top                      \
    -block_ring_bottom_layer_limit met4                           \
    -start [expr $pmesh_top_str_pitch]


#-------------------------------------------------------------------------
# Route power to power pins on the SRAM macros.
#-------------------------------------------------------------------------

deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_0
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_0

deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_1
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_1

deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_0
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_0

deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_1
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_1

deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_0
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_0

deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_1
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_1

deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_0
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_0

deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_1
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_4kb_inst_1


#-------------------------------------------------------------------------
# Fix dangling wire violations.
#-------------------------------------------------------------------------

selectWire 816.0000 1659.2000 1029.7000 1662.5600 6 VDD
editResize -direction x -offset 40.775 -side low -keep_center_line auto
deselectAll
selectWire 16.7400 1659.2000 106.9000 1662.5600 6 VDD
editResize -direction x -offset -8.35 -side high -keep_center_line auto
deselectAll
selectWire 2460.0000 897.6000 2551.9000 900.9600 6 VDD
editResize -direction x -offset 28.81 -side low -keep_center_line auto
deselectAll
selectWire 16.7400 897.6000 1750.9000 900.9600 6 VDD
editResize -direction x -offset -20.325 -side high -keep_center_line auto
deselectAll
selectWire 1781.6000 2338.2000 1784.9600 2548.6400 5 VDD
editResize -direction y -offset 28.205 -side low -keep_center_line auto
deselectAll
selectWire 1781.6000 1572.6000 1784.9600 1629.1000 5 VDD
editResize -direction y -offset -20.93 -side high -keep_center_line auto
deselectAll
