#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sun Jul 11 20:06:11 2021                
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
restoreDesign /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/deconvolution_kernel_estimator_2ksram/build/15-cadence-innovus-power/checkpoints/design.checkpoint/save.enc.dat deconv_kernel_estimator_top_level
setDistributeHost -local
setMultiCpuUsage -localCpu 16
win
verifyConnectivity -type all -error 1000000 -warning 50000
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
