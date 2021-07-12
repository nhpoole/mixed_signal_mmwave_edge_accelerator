#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sun Jul 11 21:11:02 2021                
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
restoreDesign /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/deconvolution_kernel_estimator_2ksram/build/21-cadence-innovus-signoff/checkpoints/design.checkpoint/save.enc.dat deconv_kernel_estimator_top_level
setDistributeHost -local
setMultiCpuUsage -localCpu 16
win
verifyConnectivity -type all -error 1000000 -warning 50000
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
verifyProcessAntenna -report deconv_kernel_estimator_top_level.antenna.rpt -error 1000
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
zoomBox 806.57 1805.48 807.57 1806.48
zoomBox 805.89300 1805.28800 808.66500 1806.67200
zoomBox 805.48200 1804.69900 809.99600 1806.95300
zoomBox 804.18100 1803.18200 812.83100 1807.50100
zoomBox 806.57 1803.64 807.57 1804.64
zoomBox 805.98100 1803.53700 808.33700 1804.71300
zoomBox 805.76400 1803.35100 809.02500 1804.97900
zoomBox 805.62300 1803.28800 809.46000 1805.20400
zoomBox 805.45700 1803.21500 809.97100 1805.46900
zoomBox 805.03200 1803.02700 811.28100 1806.14700
zoomBox 804.66900 1802.92200 812.02100 1806.59300
violationBrowserClose
selectWire 807.0000 1805.8400 807.1400 1939.3200 3 CTS_96
zoomBox 800.40900 1802.37200 816.98300 1810.64800
zoomBox 790.84000 1801.13800 828.19700 1819.79100
zoomBox 764.31600 1797.83200 863.37200 1847.29200
zoomBox 715.66500 1791.15000 938.91500 1902.62100
zoomBox 530.31900 1765.69700 1226.72200 2113.41800
zoomBox 188.29700 1718.72800 1757.81700 2502.40600
zoomBox -371.40000 1621.28300 2635.30800 3122.56300
zoomBox -1455.41900 1080.57700 3440.50400 3525.16200
zoomBox 672.87200 1572.69100 2519.36700 2494.66500
zoomBox -786.40100 855.82600 3375.13400 2933.72300
zoomBox -2380.54700 -110.76000 4395.82000 3272.75000
zoomBox -27.76300 115.41900 2978.94800 1616.70100
zoomBox 1003.49100 255.52600 2337.58700 921.65400
zoomBox 1369.83200 440.53700 2066.24000 788.26100
zoomBox 1429.91400 470.93800 2021.86200 766.50400
zoomBox 1640.19500 582.05400 1863.45000 693.52800
zoomBox 1711.02800 619.48400 1810.08900 668.94600
zoomBox 1741.19700 637.86500 1778.55900 656.52000
zoomBox 1715.03700 629.33400 1831.59400 687.53200
zoomBox 1603.43700 604.63900 2031.18300 818.21700
zoomBox 1383.11800 565.06300 2517.27400 1131.35900
zoomBox 799.25000 460.43100 3806.43000 1961.94700
zoomBox -58.02300 306.60600 5702.79300 3183.04100
zoomBox 1405.53400 1670.06100 3578.22500 2754.90800
zoomBox 1973.72200 2192.79800 2793.15200 2601.94800
zoomBox 2241.92600 2349.43400 2605.51400 2530.97700
zoomBox 2351.35500 2415.02100 2512.68200 2495.57300
zoomBox 2402.78800 2439.03800 2474.37100 2474.78000
zoomBox 2427.63200 2452.04600 2454.63100 2465.52700
zoomBox 2434.76400 2456.02600 2448.86000 2463.06400
