#=========================================================================
# power-strategy-singlemesh.tcl
#=========================================================================
# This script implements a single power mesh on the upper metal layers.
# Note that M2 is expected to be vertical, and the lower metal layer of
# the power mesh is expected to be horizontal.
#
# Author : Nikhil Poole
# Date   : July 9, 2021

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

# phase_vec_sram

deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

# tf_coeff_sram

deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

# deconv_kernel_magnitude_sram

deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

# deconv_kernel_phase_sram

deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met4 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around selected -layer {top met5 bottom met5 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3
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
# Fix missing vertical power stripes between SRAMs.
#-------------------------------------------------------------------------

addStripe -nets {VSS} -layer $pmesh_bot -direction vertical \
    -width $pmesh_bot_str_width                                 \
    -spacing $pmesh_bot_str_intraset_spacing                    \
    -set_to_set_distance $pmesh_bot_str_interset_pitch          \
    -max_same_layer_jog_length $pmesh_bot_str_pitch             \
    -padcore_ring_bottom_layer_limit $pmesh_bot                 \
    -padcore_ring_top_layer_limit $pmesh_top                    \
    -start_from left -start_offset 785 -stop_offset 1719

addStripe -nets {VSS} -layer $pmesh_bot -direction vertical \
    -width $pmesh_bot_str_width                                 \
    -spacing $pmesh_bot_str_intraset_spacing                    \
    -set_to_set_distance $pmesh_bot_str_interset_pitch          \
    -max_same_layer_jog_length $pmesh_bot_str_pitch             \
    -padcore_ring_bottom_layer_limit $pmesh_bot                 \
    -padcore_ring_top_layer_limit $pmesh_top                    \
    -start_from left -start_offset 518.5 -stop_offset 1985.7

addStripe -nets {VDD} -layer $pmesh_bot -direction vertical \
    -width $pmesh_bot_str_width                                 \
    -spacing $pmesh_bot_str_intraset_spacing                    \
    -set_to_set_distance $pmesh_bot_str_interset_pitch          \
    -max_same_layer_jog_length $pmesh_bot_str_pitch             \
    -padcore_ring_bottom_layer_limit $pmesh_bot                 \
    -padcore_ring_top_layer_limit $pmesh_top                    \
    -start_from left -start_offset 509.5 -stop_offset 1985.7

addStripe -nets {VDD} -layer $pmesh_bot -direction vertical \
    -width $pmesh_bot_str_width                                 \
    -spacing $pmesh_bot_str_intraset_spacing                    \
    -set_to_set_distance $pmesh_bot_str_interset_pitch          \
    -max_same_layer_jog_length $pmesh_bot_str_pitch             \
    -padcore_ring_bottom_layer_limit $pmesh_bot                 \
    -padcore_ring_top_layer_limit $pmesh_top                    \
    -start_from left -start_offset 1723 -stop_offset 772.5

addStripe -nets {VSS} -layer $pmesh_bot -direction vertical \
    -width $pmesh_bot_str_width                                 \
    -spacing $pmesh_bot_str_intraset_spacing                    \
    -set_to_set_distance $pmesh_bot_str_interset_pitch          \
    -max_same_layer_jog_length $pmesh_bot_str_pitch             \
    -padcore_ring_bottom_layer_limit $pmesh_bot                 \
    -padcore_ring_top_layer_limit $pmesh_top                    \
    -start_from left -start_offset 1732 -stop_offset 772.5

addStripe -nets {VSS} -layer $pmesh_bot -direction vertical \
    -width $pmesh_bot_str_width                                 \
    -spacing $pmesh_bot_str_intraset_spacing                    \
    -set_to_set_distance $pmesh_bot_str_interset_pitch          \
    -max_same_layer_jog_length $pmesh_bot_str_pitch             \
    -padcore_ring_bottom_layer_limit $pmesh_bot                 \
    -padcore_ring_top_layer_limit $pmesh_top                    \
    -start_from left -start_offset 1999 -stop_offset 506.1

addStripe -nets {VDD} -layer $pmesh_bot -direction vertical \
    -width $pmesh_bot_str_width                                 \
    -spacing $pmesh_bot_str_intraset_spacing                    \
    -set_to_set_distance $pmesh_bot_str_interset_pitch          \
    -max_same_layer_jog_length $pmesh_bot_str_pitch             \
    -padcore_ring_bottom_layer_limit $pmesh_bot                 \
    -padcore_ring_top_layer_limit $pmesh_top                    \
    -start_from left -start_offset 1990 -stop_offset 506.1


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

# phase_vec_sram

deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0

deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1

deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2

deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3

# tf_coeff_sram

deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0

deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1

deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2

deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3

# deconv_kernel_magnitude_sram

deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0

deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1

deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2

deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3

# deconv_kernel_phase_sram

deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0

deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1

deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2

deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3


#-------------------------------------------------------------------------
# Fix dangling wire violations.
#-------------------------------------------------------------------------

deselectAll
selectWire 2040.0000 1744.5000 2043.3600 1767.0600 5 VSS
editResize -direction y -offset -9.29 -side high -keep_center_line auto

deselectAll
selectWire 2040.0000 1744.5000 2043.3600 1757.7700 5 VSS
editResize -direction y -offset 9.9 -side low -keep_center_line auto

deselectAll
selectWire 530.4000 1522.7600 533.7600 1583.1200 5 VDD
editResize -direction y -offset 27.615 -side low -keep_center_line auto

deselectAll
selectWire 530.4000 797.9000 533.7600 820.4600 5 VDD
deleteSelectedFromFPlan

deselectAll
selectWire 530.4000 16.3200 533.7600 95.6000 5 VDD
editResize -direction y -offset -10.635 -side high -keep_center_line auto

deselectAll
selectWire 2471.2000 2461.6000 2564.6000 2464.9600 6 VSS
editResize -direction x -offset 4.005 -side low -keep_center_line auto

deselectAll
selectWire 2012.9000 2461.6000 2035.4600 2464.9600 6 VSS
deleteSelectedFromFPlan

deselectAll
selectWire 1524.6000 2461.6000 1577.1600 2464.9600 6 VSS
editResize -direction x -offset -23.415 -side high -keep_center_line auto

deselectAll
selectWire 1524.6000 2461.6000 1553.7450 2464.9600 6 VSS
editResize -direction x -offset 25.785 -side low -keep_center_line auto

deselectAll
selectWire 2471.2000 1768.0000 2552.3600 1771.3600 6 VDD
editResize -direction x -offset 17.61 -side low -keep_center_line auto

deselectAll
selectWire 2012.9000 1768.0000 2035.4600 1771.3600 6 VDD
deleteSelectedFromFPlan

deselectAll
selectWire 1516.8000 1768.0000 1577.1600 1771.3600 6 VDD
editResize -direction x -offset -9.805 -side high -keep_center_line auto

deselectAll
selectWire 799.7400 2461.6000 822.3000 2464.9600 6 VSS
deleteSelectedFromFPlan

deselectAll
selectWire 4.0400 2461.6000 97.4400 2464.9600 6 VSS
editResize -direction x -offset -12.485 -side high -keep_center_line auto

deselectAll
selectWire 2471.2000 1047.2000 2564.6000 1050.5600 6 VSS
editResize -direction x -offset 4 -side low -keep_center_line auto

deselectAll
selectWire 2012.9000 1047.2000 2035.4600 1050.5600 6 VSS
deleteSelectedFromFPlan

deselectAll
selectWire 987.2800 1047.2000 1577.1600 1050.5600 6 VSS
editResize -direction x -offset -23.395 -side high -keep_center_line auto
deselectAll
