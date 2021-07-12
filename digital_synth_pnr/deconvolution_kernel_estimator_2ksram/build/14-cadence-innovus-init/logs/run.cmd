#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sun Jul 11 16:16:40 2021                
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
setDistributeHost -local
setMultiCpuUsage -localCpu 16
setDistributeHost -local
setMultiCpuUsage -localCpu 16
set init_layout_view {}
set init_verilog ./inputs/design.v
set init_mmmc_file innovus-foundation-flow/view_definition.tcl
set init_lef_file {inputs/adk/rtk-tech.lef inputs/adk/stdcells.lef inputs/adk/rtk-tech.lef inputs/adk/stdcells.lef inputs/sky130_sram_2kbyte_1rw1r_32x512_8.lef}
set init_top_cell deconv_kernel_estimator_top_level
set init_gnd_net {VSS VPW VSSPST VSSE}
set init_pwr_net {VDD VNW VDDPST POC VDDCE VDDPE}
init_design
um::push_snapshot_stack
set_power_analysis_mode -analysis_view analysis_default
setRouteMode -earlyGlobalMaxRouteLayer 6
setPinAssignMode -maxLayer 6
setNanoRouteMode -routeTopRoutingLayer 6
setDesignMode -topRoutingLayer met5
setDesignMode -process 130 -powerEffort high
timeDesign -preplace -prefix preplace -outDir reports -expandedViews
checkDesign -all
check_timing
um::pop_snapshot_stack
reportMultiBitFFs -statistics
get_metric -raw -id current -uuid 2f54f097-1ff2-411b-bdc9-94bb3463b21d clock.Routing.area.total
get_metric -raw -id current -uuid 2f54f097-1ff2-411b-bdc9-94bb3463b21d clock.PostConditioning.area.total
get_metric -raw -id current -uuid 2f54f097-1ff2-411b-bdc9-94bb3463b21d clock.eGRPC.area.total
get_metric -raw -id current -uuid 2f54f097-1ff2-411b-bdc9-94bb3463b21d clock.Routing.area.total
get_metric -raw -id current -uuid 2f54f097-1ff2-411b-bdc9-94bb3463b21d clock.Implementation.area.total
get_metric -raw -id current -uuid 2f54f097-1ff2-411b-bdc9-94bb3463b21d clock.eGRPC.area.total
get_metric -raw -id current -uuid 2f54f097-1ff2-411b-bdc9-94bb3463b21d clock.Construction.area.total
get_metric -raw -id current -uuid 2f54f097-1ff2-411b-bdc9-94bb3463b21d clock.Implementation.area.total
um::get_metric_definition -name *.drc
um::get_metric_definition -name *.drc.layer:*
um::get_metric_definition -name *.drc.layer:*.type:*
um::get_metric_definition -name *.drc.type:*
um::get_metric_definition -name check.drc
um::get_metric_definition -name check.drc.antenna
um::get_metric_definition -name check.place.*
um::get_metric_definition -name clock.area.buffer
um::get_metric_definition -name clock.area.clkgate
um::get_metric_definition -name clock.area.inverter
um::get_metric_definition -name clock.area.logic
um::get_metric_definition -name clock.area.nonicg
um::get_metric_definition -name clock.area.total
um::get_metric_definition -name clock.area_distribution.buffer.base_cell:*
um::get_metric_definition -name clock.area_distribution.clkgate.base_cell:*
um::get_metric_definition -name clock.area_distribution.inverter.base_cell:*
um::get_metric_definition -name clock.area_distribution.logic.base_cell:*
um::get_metric_definition -name clock.area_distribution.nonicg.base_cell:*
um::get_metric_definition -name clock.buffer_depth_constraint.skew_group:*.*
um::get_metric_definition -name clock.capacitance.gate.leaf
um::get_metric_definition -name clock.capacitance.gate.top
um::get_metric_definition -name clock.capacitance.gate.trunk
um::get_metric_definition -name clock.capacitance.sink.*
um::get_metric_definition -name clock.capacitance.total.leaf
um::get_metric_definition -name clock.capacitance.total.top
um::get_metric_definition -name clock.capacitance.total.trunk
um::get_metric_definition -name clock.capacitance.wire.leaf
um::get_metric_definition -name clock.capacitance.wire.top
um::get_metric_definition -name clock.capacitance.wire.trunk
um::get_metric_definition -name clock.drv.nets.capacitance.*
um::get_metric_definition -name clock.drv.nets.capacitance.count
um::get_metric_definition -name clock.drv.nets.capacitance.max
um::get_metric_definition -name clock.drv.nets.fanout.*
um::get_metric_definition -name clock.drv.nets.fanout.count
um::get_metric_definition -name clock.drv.nets.fanout.max
um::get_metric_definition -name clock.drv.nets.length.*
um::get_metric_definition -name clock.drv.nets.length.count
um::get_metric_definition -name clock.drv.nets.length.max
um::get_metric_definition -name clock.drv.nets.remaining
um::get_metric_definition -name clock.drv.nets.resistance.*
um::get_metric_definition -name clock.drv.nets.resistance.count
um::get_metric_definition -name clock.drv.nets.resistance.max
um::get_metric_definition -name clock.drv.nets.unfixable
um::get_metric_definition -name clock.halo.clock_tree:*.count
um::get_metric_definition -name clock.halo.clock_tree:*.violations
um::get_metric_definition -name clock.instances.buffer
um::get_metric_definition -name clock.instances.buffer.creator.*
um::get_metric_definition -name clock.instances.clkgate
um::get_metric_definition -name clock.instances.inverter
um::get_metric_definition -name clock.instances.inverter.creator.*
um::get_metric_definition -name clock.instances.logic
um::get_metric_definition -name clock.instances.nonicg
um::get_metric_definition -name clock.instances.total
um::get_metric_definition -name clock.instances_distribution.buffer.base_cell:*
um::get_metric_definition -name clock.instances_distribution.clkgate.base_cell:*
um::get_metric_definition -name clock.instances_distribution.inverter.base_cell:*
um::get_metric_definition -name clock.instances_distribution.logic.base_cell:*
um::get_metric_definition -name clock.instances_distribution.nonicg.base_cell:*
um::get_metric_definition -name clock.latency.primary_reporting_skew_group.primary_half_corner.*
um::get_metric_definition -name clock.latency.skew_group:*.delay_corner:*.early.*
um::get_metric_definition -name clock.latency.skew_group:*.delay_corner:*.late.*
um::get_metric_definition -name clock.nets.length.leaf
um::get_metric_definition -name clock.nets.length.top
um::get_metric_definition -name clock.nets.length.total
um::get_metric_definition -name clock.nets.length.trunk
um::get_metric_definition -name clock.skew.primary_reporting_skew_group.primary_half_corner.*
um::get_metric_definition -name clock.skew.primary_reporting_skew_group.primary_half_corner.skew_band.*
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.early.gate
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.early.skew_band.*
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.early.target
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.early.target_met
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.early.total
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.early.wire
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.late.gate
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.late.skew_band.*
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.late.target
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.late.target_met
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.late.total
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.late.wire
um::get_metric_definition -name clock.stage_depth_constraint.*
um::get_metric_definition -name clock.transition.auto_target.delay_corner:*.early.clock_tree:*
um::get_metric_definition -name clock.transition.auto_target.delay_corner:*.late.clock_tree:*
um::get_metric_definition -name clock.transition.primary_half_corner.leaf.*.*
um::get_metric_definition -name clock.transition.primary_half_corner.leaf.*.max
um::get_metric_definition -name clock.transition.primary_half_corner.top.*.*
um::get_metric_definition -name clock.transition.primary_half_corner.top.*.max
um::get_metric_definition -name clock.transition.primary_half_corner.trunk.*.*
um::get_metric_definition -name clock.transition.primary_half_corner.trunk.*.max
um::get_metric_definition -name clock.transition.target.delay_corner:*.early.leaf.clock_tree:*
um::get_metric_definition -name clock.transition.target.delay_corner:*.early.top.clock_tree:*
um::get_metric_definition -name clock.transition.target.delay_corner:*.early.trunk.clock_tree:*
um::get_metric_definition -name clock.transition.target.delay_corner:*.late.leaf.clock_tree:*
um::get_metric_definition -name clock.transition.target.delay_corner:*.late.top.clock_tree:*
um::get_metric_definition -name clock.transition.target.delay_corner:*.late.trunk.clock_tree:*
um::get_metric_definition -name clock.transition.target.primary_half_corner.leaf.*
um::get_metric_definition -name clock.transition.target.primary_half_corner.top.*
um::get_metric_definition -name clock.transition.target.primary_half_corner.trunk.*
um::get_metric_definition -name design.area
um::get_metric_definition -name design.area.always_on
um::get_metric_definition -name design.area.blackbox
um::get_metric_definition -name design.area.buffer
um::get_metric_definition -name design.area.combinatorial
um::get_metric_definition -name design.area.hinst:*
um::get_metric_definition -name design.area.icg
um::get_metric_definition -name design.area.inverter
um::get_metric_definition -name design.area.io
um::get_metric_definition -name design.area.isolation
um::get_metric_definition -name design.area.latch
um::get_metric_definition -name design.area.level_shifter
um::get_metric_definition -name design.area.logical
um::get_metric_definition -name design.area.macro
um::get_metric_definition -name design.area.physical
um::get_metric_definition -name design.area.power_switch
um::get_metric_definition -name design.area.register
um::get_metric_definition -name design.area.std_cell
um::get_metric_definition -name design.area.vth:*
um::get_metric_definition -name design.area.vth:*.ratio
um::get_metric_definition -name design.blockages.place.area
um::get_metric_definition -name design.blockages.route.area
um::get_metric_definition -name design.blockages.route.area.layer:*
um::get_metric_definition -name design.congestion.hotspot.max
um::get_metric_definition -name design.congestion.hotspot.total
um::get_metric_definition -name design.density
um::get_metric_definition -name design.floorplan.image
um::get_metric_definition -name design.instances
um::get_metric_definition -name design.instances.always_on
um::get_metric_definition -name design.instances.blackbox
um::get_metric_definition -name design.instances.buffer
um::get_metric_definition -name design.instances.combinatorial
um::get_metric_definition -name design.instances.hinst:*
um::get_metric_definition -name design.instances.icg
um::get_metric_definition -name design.instances.inverter
um::get_metric_definition -name design.instances.io
um::get_metric_definition -name design.instances.isolation
um::get_metric_definition -name design.instances.latch
um::get_metric_definition -name design.instances.level_shifter
um::get_metric_definition -name design.instances.logical
um::get_metric_definition -name design.instances.macro
um::get_metric_definition -name design.instances.physical
um::get_metric_definition -name design.instances.power_switch
um::get_metric_definition -name design.instances.register
um::get_metric_definition -name design.instances.std_cell
um::get_metric_definition -name design.instances.vth:*
um::get_metric_definition -name design.instances.vth:*.ratio
um::get_metric_definition -name design.multibit.*
um::get_metric_definition -name design.name
um::get_metric_definition -name design.route.drc.image
um::get_metric_definition -name flow.cputime
um::get_metric_definition -name flow.cputime.total
um::get_metric_definition -name flow.last_child_snapshot
um::get_metric_definition -name flow.log
um::get_metric_definition -name flow.machine
um::get_metric_definition -name flow.machine.cpu.frequency
um::get_metric_definition -name flow.machine.cpu.model
um::get_metric_definition -name flow.machine.cpu.number
um::get_metric_definition -name flow.machine.hostname
um::get_metric_definition -name flow.machine.load
um::get_metric_definition -name flow.machine.memory.free
um::get_metric_definition -name flow.machine.memory.total
um::get_metric_definition -name flow.machine.os
um::get_metric_definition -name flow.machine.swap.free
um::get_metric_definition -name flow.machine.swap.total
um::get_metric_definition -name flow.memory
um::get_metric_definition -name flow.memory.resident
um::get_metric_definition -name flow.memory.resident.peak
um::get_metric_definition -name flow.realtime
um::get_metric_definition -name flow.realtime.total
um::get_metric_definition -name flow.root_config
um::get_metric_definition -name flow.run_directory
um::get_metric_definition -name flow.run_tag
um::get_metric_definition -name flow.step.tcl
um::get_metric_definition -name flow.template.feature_enabled
um::get_metric_definition -name flow.template.type
um::get_metric_definition -name flow.tool_list
um::get_metric_definition -name flow.user
um::get_metric_definition -name flowtool.status
um::get_metric_definition -name messages
um::get_metric_definition -name name
um::get_metric_definition -name power
um::get_metric_definition -name power.clock
um::get_metric_definition -name power.hinst:*
um::get_metric_definition -name power.internal
um::get_metric_definition -name power.internal.hinst:*
um::get_metric_definition -name power.internal.type:*
um::get_metric_definition -name power.leakage
um::get_metric_definition -name power.leakage.hinst:*
um::get_metric_definition -name power.leakage.type:*
um::get_metric_definition -name power.switching
um::get_metric_definition -name power.switching.hinst:*
um::get_metric_definition -name power.switching.type:*
um::get_metric_definition -name route.drc
um::get_metric_definition -name route.drc.antenna
um::get_metric_definition -name route.drc.layer:*
um::get_metric_definition -name route.map.*
um::get_metric_definition -name route.overflow
um::get_metric_definition -name route.overflow.horizontal
um::get_metric_definition -name route.overflow.layer:*
um::get_metric_definition -name route.overflow.vertical
um::get_metric_definition -name route.shielding.*
um::get_metric_definition -name route.via
um::get_metric_definition -name route.via.layer:*
um::get_metric_definition -name route.via.multicut
um::get_metric_definition -name route.via.multicut.layer:*
um::get_metric_definition -name route.via.multicut.percentage
um::get_metric_definition -name route.via.singlecut
um::get_metric_definition -name route.via.singlecut.layer:*
um::get_metric_definition -name route.via.singlecut.percentage
um::get_metric_definition -name route.via.total
um::get_metric_definition -name route.wirelength
um::get_metric_definition -name timing.drv.max_cap.total
um::get_metric_definition -name timing.drv.max_cap.worst
um::get_metric_definition -name timing.drv.max_fanout.total
um::get_metric_definition -name timing.drv.max_fanout.worst
um::get_metric_definition -name timing.drv.max_length.total
um::get_metric_definition -name timing.drv.max_length.worst
um::get_metric_definition -name timing.drv.max_tran.total
um::get_metric_definition -name timing.drv.max_tran.worst
um::get_metric_definition -name timing.hold.feps
um::get_metric_definition -name timing.hold.feps.analysis_view:*
um::get_metric_definition -name timing.hold.feps.path_group:*
um::get_metric_definition -name timing.hold.feps.path_group:*.analysis_view:*
um::get_metric_definition -name timing.hold.feps.path_group:reg2reg
um::get_metric_definition -name timing.hold.histogram
um::get_metric_definition -name timing.hold.histogram.views
um::get_metric_definition -name timing.hold.tns
um::get_metric_definition -name timing.hold.tns.analysis_view:*
um::get_metric_definition -name timing.hold.tns.path_group:*
um::get_metric_definition -name timing.hold.tns.path_group:*.analysis_view:*
um::get_metric_definition -name timing.hold.tns.path_group:reg2reg
um::get_metric_definition -name timing.hold.type
um::get_metric_definition -name timing.hold.wns
um::get_metric_definition -name timing.hold.wns.analysis_view:*
um::get_metric_definition -name timing.hold.wns.path_group:*
um::get_metric_definition -name timing.hold.wns.path_group:*.analysis_view:*
um::get_metric_definition -name timing.hold.wns.path_group:reg2reg
um::get_metric_definition -name timing.min_pulse_width.clocktree.feps
um::get_metric_definition -name timing.min_pulse_width.clocktree.feps.analysis_view:*
um::get_metric_definition -name timing.min_pulse_width.clocktree.feps.analysis_view:*.clock:*
um::get_metric_definition -name timing.min_pulse_width.clocktree.feps.clock:*
um::get_metric_definition -name timing.min_pulse_width.clocktree.tns
um::get_metric_definition -name timing.min_pulse_width.clocktree.tns.analysis_view:*
um::get_metric_definition -name timing.min_pulse_width.clocktree.tns.analysis_view:*.clock:*
um::get_metric_definition -name timing.min_pulse_width.clocktree.tns.clock:*
um::get_metric_definition -name timing.min_pulse_width.clocktree.wns
um::get_metric_definition -name timing.min_pulse_width.clocktree.wns.analysis_view:*
um::get_metric_definition -name timing.min_pulse_width.clocktree.wns.analysis_view:*.clock:*
um::get_metric_definition -name timing.min_pulse_width.clocktree.wns.clock:*
um::get_metric_definition -name timing.min_pulse_width.endpoints.feps
um::get_metric_definition -name timing.min_pulse_width.endpoints.feps.analysis_view:*
um::get_metric_definition -name timing.min_pulse_width.endpoints.feps.analysis_view:*.clock:*
um::get_metric_definition -name timing.min_pulse_width.endpoints.feps.clock:*
um::get_metric_definition -name timing.min_pulse_width.endpoints.tns
um::get_metric_definition -name timing.min_pulse_width.endpoints.tns.analysis_view:*
um::get_metric_definition -name timing.min_pulse_width.endpoints.tns.analysis_view:*.clock:*
um::get_metric_definition -name timing.min_pulse_width.endpoints.tns.clock:*
um::get_metric_definition -name timing.min_pulse_width.endpoints.wns
um::get_metric_definition -name timing.min_pulse_width.endpoints.wns.analysis_view:%.clock:*
um::get_metric_definition -name timing.min_pulse_width.endpoints.wns.analysis_view:*
um::get_metric_definition -name timing.min_pulse_width.endpoints.wns.analysis_view:*.clock:*
um::get_metric_definition -name timing.min_pulse_width.endpoints.wns.clock:*
um::get_metric_definition -name timing.setup.feps
um::get_metric_definition -name timing.setup.feps.analysis_view:*
um::get_metric_definition -name timing.setup.feps.path_group:*
um::get_metric_definition -name timing.setup.feps.path_group:*.analysis_view:*
um::get_metric_definition -name timing.setup.feps.path_group:reg2reg
um::get_metric_definition -name timing.setup.histogram
um::get_metric_definition -name timing.setup.histogram.views
um::get_metric_definition -name timing.setup.tns
um::get_metric_definition -name timing.setup.tns.analysis_view:*
um::get_metric_definition -name timing.setup.tns.path_group:*
um::get_metric_definition -name timing.setup.tns.path_group:*.analysis_view:*
um::get_metric_definition -name timing.setup.tns.path_group:reg2reg
um::get_metric_definition -name timing.setup.type
um::get_metric_definition -name timing.setup.wns
um::get_metric_definition -name timing.setup.wns.analysis_view:*
um::get_metric_definition -name timing.setup.wns.path_group:*
um::get_metric_definition -name timing.setup.wns.path_group:*.analysis_view:*
um::get_metric_definition -name timing.setup.wns.path_group:reg2reg
um::get_metric_definition -name timing.si.double_clocking.analysis_view:*
um::get_metric_definition -name timing.si.double_clocking.frequency_violations.analysis_view:*
um::get_metric_definition -name timing.si.double_clocking.report_file.analysis_view:*
um::get_metric_definition -name timing.si.glitches
um::get_metric_definition -name timing.si.noise
um::get_metric_definition -name transition.*
um::get_metric_definition -name transition.count
um::get_metric_definition -name transition.max
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
set timing_report_enable_clock_object_in_from_to true
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
set report_timing_format {instance arc cell transition delay arrival required}
setOptMode -timeDesignCompressReports false
floorPlan -d 2568.64 2564.96 28.56 28.56 28.56 28.56
setFlipping s
addHaloToBlock 10.88 10.88 10.88 10.88 -allBlock
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
createRouteBlk -box {107.66 105.82 522.96 787.68} -layer li1
createRouteBlk -box {565.96 105.82 981.26 787.68} -layer li1
createRouteBlk -box {107.66 830.68 522.96 1512.54} -layer li1
createRouteBlk -box {565.96 830.68 981.26 1512.54} -layer li1
createRouteBlk -box {107.66 1585.54 789.52 2000.84} -layer li1
createRouteBlk -box {832.52 1585.54 1514.38 2000.84} -layer li1
createRouteBlk -box {107.66 2043.84 789.52 2459.14} -layer li1
createRouteBlk -box {832.52 2043.84 1514.38 2459.14} -layer li1
createRouteBlk -box {1587.38 1052.42 2002.68 1734.28} -layer li1
createRouteBlk -box {2045.68 1052.42 2460.98 1734.28} -layer li1
createRouteBlk -box {1587.38 1777.28 2002.68 2459.14} -layer li1
createRouteBlk -box {2045.68 1777.28 2460.98 2459.14} -layer li1
createRouteBlk -box {1054.26 105.82 1736.12 521.12} -layer li1
createRouteBlk -box {1779.12 105.82 2460.98 521.12} -layer li1
createRouteBlk -box {1054.26 564.12 1736.12 979.42} -layer li1
createRouteBlk -box {1779.12 564.12 2460.98 979.42} -layer li1
addWellTap -cell sky130_fd_sc_hd__tapvpwrvgnd_1 -prefix WELLTAP -cellInterval 13 -checkerboard
verifyWellTap -cells sky130_fd_sc_hd__tapvpwrvgnd_1 -report reports/welltap.rpt -rule 6
editPin -layer M3 -pin { serial_out serial_out_valid freq_eval_done } -side RIGHT -spreadType SIDE
editPin -layer M3 -pin {{sig_amplitude[7]} {sig_amplitude[6]} {sig_amplitude[5]} {sig_amplitude[4]} {sig_amplitude[3]} {sig_amplitude[2]} {sig_amplitude[1]} {sig_amplitude[0]} amplitude_adc_done {sig_frequency[7]} {sig_frequency[6]} {sig_frequency[5]} {sig_frequency[4]} {sig_frequency[3]} {sig_frequency[2]} {sig_frequency[1]} {sig_frequency[0]} frequency_adc_done} -side LEFT -spreadType SIDE
editPin -layer M3 -pin { clk rst_n load_en debug_en adc_bypass_en serial_in {sram_select[0]} {sram_select[1]} } -side TOP -spreadType SIDE
reset_path_group -all
resetPathGroupOptions
group_path -name In2Out -from $inputs -to $outputs
group_path -name In2Reg  -from $inputs  -to $allregs
group_path -name Reg2Out -from $allregs -to $outputs
group_path -name Reg2Reg -from $regs -to $regs
group_path -name Reg2ClkGate -from $allregs -to $icgs
group_path -name All2Macro -to   $macros
group_path -name Macro2All -from $macros
setPathGroupOptions All2Macro -effortLevel high
setPathGroupOptions Macro2All -effortLevel high
setPathGroupOptions Reg2Reg -effortLevel high
timeDesign -preplace -hold -expandedViews -prefix preplace -outDir reports
report_ports > $vars(rpt_dir)/$vars(step).ports.rpt
setDontUse sky130_fd_sc_hd__probec_p_8 true
setDontUse sky130_fd_sc_hd__probe_p_8 true
setDontUse sky130_fd_sc_hd__clkinvlp_2 true
setDontUse sky130_fd_sc_hd__clkinvlp_4 true
setDontUse sky130_fd_sc_hd__dlygate4sd1_1 true
setDontUse sky130_fd_sc_hd__dlygate4sd2_1 true
setDontUse sky130_fd_sc_hd__dlygate4sd3_1 true
setDontUse sky130_fd_sc_hd__dlymetal6s2s_1 true
setDontUse sky130_fd_sc_hd__dlymetal6s4s_1 true
setDontUse sky130_fd_sc_hd__dlymetal6s6s_1 true
setDontUse sky130_fd_sc_hd__clkinv_16 true
getVersion
saveDesign checkpoints/design.checkpoint/save.enc -user_path
