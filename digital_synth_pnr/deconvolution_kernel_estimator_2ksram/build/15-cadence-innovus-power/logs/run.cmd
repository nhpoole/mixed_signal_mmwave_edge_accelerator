#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sun Jul 11 20:00:19 2021                
#                                                     
#######################################################

#@(#)CDS: Innovus v20.13-s083_1 (64bit) 01/19/2021 16:51 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 20.13-s083_1 NR201221-0721/20_13-UB (database version 18.20.538) {superthreading v2.13}
#@(#)CDS: AAE 20.13-s024 (64bit) 01/19/2021 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 20.13-s042_1 () Jan 14 2021 08:49:42 ( )
#@(#)CDS: SYNTECH 20.13-s015_1 () Jan  6 2021 07:44:41 ( )
#@(#)CDS: CPE v20.13-s092
#@(#)CDS: IQuantus/TQuantus 20.1.1-s453 (64bit) Fri Nov 20 21:16:44 PST 2020 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
is_common_ui_mode
restoreDesign /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/deconvolution_kernel_estimator_2ksram/build/14-cadence-innovus-init/checkpoints/design.checkpoint/save.enc.dat deconv_kernel_estimator_top_level
setDistributeHost -local
setMultiCpuUsage -localCpu 16
globalNetConnect VDD -type pgpin -pin VPWR -inst * -verbose
globalNetConnect VSS -type pgpin -pin VGND -inst * -verbose
globalNetConnect VSS -type pgpin -pin VNB -inst * -verbose
globalNetConnect VDD -type pgpin -pin VPB -inst * -verbose
globalNetConnect VDD -type pgpin -pin vccd1 -inst * -verbose
globalNetConnect VSS -type pgpin -pin vssd1 -inst * -verbose
sroute -nets {VDD VSS}
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top 6 bottom 6 left 5 right 5} -width 8.16 -spacing 4.08 -offset 4.08 -extend_corner {tl tr bl br lt lb rt rb}
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
setViaGenMode -reset
setViaGenMode -viarule_preference default
setViaGenMode -ignore_DRC false
setAddStripeMode -reset
setAddStripeMode -stacked_via_bottom_layer met1 -stacked_via_top_layer 6 -break_at {  block_ring  }
addStripe -nets {VSS VDD} -layer 5 -direction vertical -width 3.36 -spacing 10.24 -set_to_set_distance 54.4 -max_same_layer_jog_length 13.6 -padcore_ring_bottom_layer_limit 5 -padcore_ring_top_layer_limit 6 -start 27.2
addStripe -nets VSS -layer 5 -direction vertical -width 3.36 -spacing 10.24 -set_to_set_distance 54.4 -max_same_layer_jog_length 13.6 -padcore_ring_bottom_layer_limit 5 -padcore_ring_top_layer_limit 6 -start_from left -start_offset 785 -stop_offset 1719
addStripe -nets VSS -layer 5 -direction vertical -width 3.36 -spacing 10.24 -set_to_set_distance 54.4 -max_same_layer_jog_length 13.6 -padcore_ring_bottom_layer_limit 5 -padcore_ring_top_layer_limit 6 -start_from left -start_offset 518.5 -stop_offset 1985.7
addStripe -nets VDD -layer 5 -direction vertical -width 3.36 -spacing 10.24 -set_to_set_distance 54.4 -max_same_layer_jog_length 13.6 -padcore_ring_bottom_layer_limit 5 -padcore_ring_top_layer_limit 6 -start_from left -start_offset 509.5 -stop_offset 1985.7
addStripe -nets VDD -layer 5 -direction vertical -width 3.36 -spacing 10.24 -set_to_set_distance 54.4 -max_same_layer_jog_length 13.6 -padcore_ring_bottom_layer_limit 5 -padcore_ring_top_layer_limit 6 -start_from left -start_offset 1723 -stop_offset 772.5
addStripe -nets VSS -layer 5 -direction vertical -width 3.36 -spacing 10.24 -set_to_set_distance 54.4 -max_same_layer_jog_length 13.6 -padcore_ring_bottom_layer_limit 5 -padcore_ring_top_layer_limit 6 -start_from left -start_offset 1732 -stop_offset 772.5
addStripe -nets VSS -layer 5 -direction vertical -width 3.36 -spacing 10.24 -set_to_set_distance 54.4 -max_same_layer_jog_length 13.6 -padcore_ring_bottom_layer_limit 5 -padcore_ring_top_layer_limit 6 -start_from left -start_offset 1999 -stop_offset 506.1
addStripe -nets VDD -layer 5 -direction vertical -width 3.36 -spacing 10.24 -set_to_set_distance 54.4 -max_same_layer_jog_length 13.6 -padcore_ring_bottom_layer_limit 5 -padcore_ring_top_layer_limit 6 -start_from left -start_offset 1990 -stop_offset 506.1
setViaGenMode -reset
setViaGenMode -viarule_preference default
setViaGenMode -ignore_DRC false
setAddStripeMode -reset
setAddStripeMode -stacked_via_bottom_layer 5 -stacked_via_top_layer 6 -break_at {  block_ring  }
addStripe -nets {VSS VDD} -layer 6 -direction horizontal -width 3.36 -spacing 10.24 -set_to_set_distance 54.4 -max_same_layer_jog_length 13.6 -padcore_ring_bottom_layer_limit 5 -padcore_ring_top_layer_limit 6 -block_ring_bottom_layer_limit met4 -start 13.6
deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0
sroute -connect blockPin -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0
deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1
sroute -connect blockPin -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1
deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2
sroute -connect blockPin -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2
deselectAll
selectInst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3
sroute -connect blockPin -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst phase_vec_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3
deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0
sroute -connect blockPin -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0
deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1
sroute -connect blockPin -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1
deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2
sroute -connect blockPin -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2
deselectAll
selectInst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3
sroute -connect blockPin -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst tf_coeff_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3
deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0
sroute -connect blockPin -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0
deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1
sroute -connect blockPin -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1
deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2
sroute -connect blockPin -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2
deselectAll
selectInst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3
sroute -connect blockPin -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst deconv_kernel_magnitude_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3
deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0
sroute -connect blockPin -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_0
deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1
sroute -connect blockPin -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_1
deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2
sroute -connect blockPin -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_2
deselectAll
selectInst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3
sroute -connect blockPin -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst deconv_kernel_phase_sram_interface_inst/ram_sync_1rw1r_inst/genblk1_genblk1_sram_2kb_inst_3
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
getVersion
saveDesign checkpoints/design.checkpoint/save.enc -user_path
