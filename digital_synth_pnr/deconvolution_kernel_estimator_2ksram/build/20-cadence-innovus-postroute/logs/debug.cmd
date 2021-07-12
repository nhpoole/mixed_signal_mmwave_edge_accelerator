#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sun Jul 11 20:45:55 2021                
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
restoreDesign /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/deconvolution_kernel_estimator_2ksram/build/20-cadence-innovus-postroute/checkpoints/design.checkpoint/save.enc.dat deconv_kernel_estimator_top_level
setDistributeHost -local
setMultiCpuUsage -localCpu 16
win
verifyConnectivity -type all -error 1000000 -warning 50000
verifyProcessAntenna -report deconv_kernel_estimator_top_level.antenna.rpt -error 1000
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report deconv_kernel_estimator_top_level.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
zoomBox 806.43 1802.475 807.78 1804.125
zoomBox 804.47200 1802.30000 809.85300 1804.98700
zoomBox 803.51500 1802.09600 810.96300 1805.81500
zoomBox 802.90600 1801.96600 811.67000 1806.34200
zoomBox 803.53600 1802.33600 810.98600 1806.05600
zoomBox 801.27700 1801.39100 813.41000 1807.44900
zoomBox 797.60500 1799.80800 817.36500 1809.67400
zoomBox 801.25500 1801.54300 813.39000 1807.60200
zoomBox 802.90200 1802.49100 811.67000 1806.86900
zoomBox 803.54200 1802.68200 810.99600 1806.40400
selectWire 807.0000 1803.4600 807.1400 1939.3200 3 CTS_96
uiSetTool cutWire
editCutWire -only_visible_wires -line { 806.935 1805.782 807.233 1805.782 } -selected
editCutWire -only_visible_wires -line { 806.961 1804.301 807.243 1804.301 } -selected
editCutWire -only_visible_wires -line { 806.94 1804.322 807.243 1804.322 } -selected
uiSetTool select
selectWire 807.0000 1803.4600 807.1400 1805.9800 3 CTS_96
uiSetTool cutWire
editCutWire -only_visible_wires -line { 806.95 1804.337 807.233 1804.337 } -selected
uiSetTool select
selectWire 807.0000 1804.1400 807.1400 1805.9800 3 CTS_96
setEditMode -layer_vertical met3
editChangeLayer
violationBrowser -all -no_display_false -displayByLayer
zoomBox 803.06200 1802.56700 811.83200 1806.94600
verifyProcessAntenna -report deconv_kernel_estimator_top_level.antenna.rpt -error 1000
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
saveDesign deconv_kernel_estimator_top_level
