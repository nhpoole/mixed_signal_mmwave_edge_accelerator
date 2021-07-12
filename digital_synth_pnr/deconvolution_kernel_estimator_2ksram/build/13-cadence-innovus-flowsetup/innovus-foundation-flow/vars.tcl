# ############################################################################ #
# Foundation Flow Codegen Vars Record
# Executed on 04:15:52 PM(Jul11) by user: nhpoole
# Copyright 2008-2012, Cadence Design Systems, Inc.
# All Rights Reserved
# ############################################################################ #

# This file contains all default (seeded) variables and user-defined variables that were resolved during code generation.
if {![info exists vars]} {
   global vars
}
global env
set env(VPATH) make
set vars(ff_exe_dir) "."
set vars(rundir) "."
set vars(script_dir) "innovus-foundation-flow"

set vars(plug_dir) "PLUG"


set vars(abort) {0}
set vars(abutted_design) {0}
set vars(active_hold_views) {analysis_default}
set vars(active_setup_views) {analysis_default}
set vars(activity_file_format) {TCF}
set vars(add_tracks) {false}
set vars(adk_dir) {inputs/adk}
set vars(all) {true}
set vars(all_analysis_views) {analysis_default}
set vars(always_source_tcl) {innovus-foundation-flow/custom-scripts/always-source.tcl}
set vars(analysis_default,constraint_mode) {constraints_default}
set vars(analysis_default,delay_corner) {delay_default}
set vars(analysis_views) {analysis_default}
set vars(antenna_diode) {sky130_fd_sc_hd__diode_2}
set vars(arg_list) {codegen edi flat makefile mode rc novus synth_flow rundir script_dir style user_mode verbose version}
set vars(argv) {all}
set vars(backup_data) {0}
set vars(batch) {true}
set vars(black_box) {true}
set vars(bsteps) {init place cts postcts_hold route postroute signoff debug}
set vars(budget_mode) {giga_opt}
set vars(captbl_file) {-best inputs/adk/rtk-typical.captable -worst inputs/adk/rtk-typical.captable}
set vars(capture_metrics) {true}
set vars(catch_errors) {0}
set vars(ccopt_effort) {low}
set vars(ccopt_integration) {native}
set vars(cdb_file) {}
set vars(cdb_file,max) {}
set vars(cdb_file,min) {}
set vars(check_setup) {0}
set vars(check_setup_errors) {}
set vars(clock_gate_aware) {true}
set vars(codegen) {true}
set vars(config_files) {}
set vars(congestion_effort) {medium}
set vars(constraint_modes) {constraints_default}
set vars(constraints_default,post_cts_sdc) {./inputs/design.sdc}
set vars(constraints_default,pre_cts_sdc) {./inputs/design.sdc}
set vars(cpf_isolation) {false}
set vars(cpf_keep_rows) {false}
set vars(cpf_level_shifter) {false}
set vars(cpf_power_domain) {false}
set vars(cpf_power_switch) {false}
set vars(cpf_state_retention) {false}
set vars(cpf_timing) {false}
set vars(cpus_per_remote_host) {1}
set vars(create_flexfiller_blockage) {false}
set vars(cts,restore_design,skip) {true}
set vars(cts,save_design,replace_tcl) {innovus-foundation-flow/custom-scripts/embed-return.tcl}
set vars(cts,set_analysis_mode) {setAnalysisMode -cppr both 
}
set vars(cts,set_ccopt_mode) {set_ccopt_mode  -integration "native" -ccopt_modify_clock_latency true
}
set vars(cts,set_ccopt_mode,skip) {true}
set vars(cts,set_nanoroute_mode) {
setNanoRouteMode  -drouteUseMultiCutViaEffort high -routeWithLithoDriven true
}
set vars(cts,time_design,skip) {true}
set vars(cts_engine) {ccopt}
set vars(custom_rundir_name_append) {}
set vars(custom_scripts_dir) {innovus-foundation-flow/custom-scripts}
set vars(cwd) {.}
set vars(dbs_dir) {checkpoints}
set vars(dbs_format) {fe}
set vars(debug) {0}
set vars(default_hold_view) {analysis_default}
set vars(default_setup_view) {analysis_default}
set vars(delay_corners) {delay_default}
set vars(delay_default,early_library_set) {libs_bc}
set vars(delay_default,late_library_set) {libs_typical}
set vars(delay_default,rc_corner) {typical}
set vars(design) {deconv_kernel_estimator_top_level}
set vars(design_root) {./}
set vars(eco_dir) {ECO}
set vars(edi) {false}
set vars(enable_aocv) {false}
set vars(enable_celtic_steps) {false}
set vars(enable_cppr) {both}
set vars(enable_flexilm) {false}
set vars(enable_nrgr) {false}
set vars(enable_ocv) {pre_place}
set vars(enable_pac) {false}
set vars(enable_pam) {false}
set vars(enable_qor_check) {false}
set vars(enable_rcp) {false}
set vars(enable_si_aware) {true}
set vars(enable_signoff_eco) {false}
set vars(enable_socv) {false}
set vars(enable_ss) {false}
set vars(error_count) {0}
set vars(execute_string) {/cad/mentor/2019.1/aoi_cal_2019.1_18.11/pkgs/icv_comp/8.4/bin/tclsh ./SCRIPTS/gen_flow.tcl -m flat --Verbose --nomake --setup . --dir innovus-foundation-flow all}
set vars(fff_info_level) {0}
set vars(filler_cells) {sky130_fd_sc_hd__fill_8  sky130_fd_sc_hd__fill_4  sky130_fd_sc_hd__fill_2  sky130_fd_sc_hd__fill_1}
set vars(fix_fanout_load) {true}
set vars(fix_hold) {postcts}
set vars(fix_hold_allow_tns_degradation) {true}
set vars(fix_hold_ignore_ios) {false}
set vars(fix_litho) {false}
set vars(flat) {off}
set vars(flavor) {flat}
set vars(flexmodel_art_based) {true}
set vars(flexmodel_as_ptn) {1}
set vars(flexmodel_prototype) {false}
set vars(flexmodel_prototype_congestion_aware) {false}
set vars(flexmodel_prototype_flow_style) {top_to_bottom}
set vars(flexmodel_prototype_timing_aware) {false}
set vars(flexmodel_prototype_user_contraints) {user_constraints.txt}
set vars(flow) {mmmc}
set vars(flow_effort) {standard}
set vars(format_lines) {true}
set vars(freeze_vars) {false}
set vars(gds_layer_map) {inputs/adk/rtk-stream-out.map}
set vars(generate_flow_steps) {0}
set vars(generate_tracks) {true}
set vars(genus_config_tcl) {}
set vars(globbed) {true}
set vars(good_corners) {delay_default}
set vars(ground_nets) {VSS VPW VSSPST VSSE}
set vars(hier_flow_type) {1pass}
set vars(high_timing_effort) {false}
set vars(hold_analysis_views) {analysis_default}
set vars(hosts) {1}
set vars(html_dir) {HTML}
set vars(html_summary) {reports/summary.html}
set vars(ieee1801_isolation) {false}
set vars(ieee1801_keep_rows) {false}
set vars(ieee1801_level_shifter) {false}
set vars(ieee1801_power_domain) {false}
set vars(ieee1801_power_switch) {false}
set vars(ieee1801_state_retention) {false}
set vars(ieee1801_timing) {false}
set vars(ilm) {0}
set vars(ilm_list) {}
set vars(import_mode) {-treatUndefinedCellAsBbox 0 -keepEmptyModule 1 -useLefDef56 1 }
set vars(info_count) {0}
set vars(init,save_design,replace_tcl) {innovus-foundation-flow/custom-scripts/embed-return.tcl}
set vars(initialized) {1}
set vars(innovus_config_tcl) {}
set vars(insert_feedthrough) {1}
set vars(lef_files) {inputs/adk/rtk-tech.lef inputs/adk/stdcells.lef inputs/adk/rtk-tech.lef inputs/adk/stdcells.lef inputs/sky130_sram_2kbyte_1rw1r_32x512_8.lef}
set vars(library_sets) {libs_typical libs_bc}
set vars(libs_bc,timing) {inputs/adk/stdcells-bc.lib inputs/adk/stdcells-bc.lib}
set vars(libs_typical,timing) {inputs/adk/stdcells.lib inputs/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib}
set vars(litho_driven_routing) {true}
set vars(loaded) {1}
set vars(local_cpus) {16}
set vars(log_dir) {logs}
set vars(lp_config_tcl) {}
set vars(make) {all}
set vars(make_browser) {netscape}
set vars(make_syn_tool) {genus}
set vars(make_syn_tool_args) {-64 -legacy_ui}
set vars(make_tool) {innovus}
set vars(make_tool_args) {-64 -nowin}
set vars(makefile) {false}
set vars(max_route_layer) {6}
set vars(metalfill) {false}
set vars(missing_tags) {}
set vars(mode) {flat}
set vars(multi_cut_effort) {high}
set vars(netlist) {inputs/design.v}
set vars(netlist_type) {verilog}
set vars(novus) {false}
set vars(oa_abstract_name) {}
set vars(oa_design_cell) {}
set vars(oa_design_lib) {}
set vars(oa_design_view) {}
set vars(oa_layout_name) {}
set vars(orig_dbs_dir) {checkpoints}
set vars(orig_log_dir) {logs}
set vars(orig_rpt_dir) {reports}
set vars(pac_scratch_dir) {PAC_SCRATCH}
set vars(parent) {edi}
set vars(partition_dir) {PARTITION}
set vars(partition_dir_pass2) {PARTITION_CTS}
set vars(place,restore_design,skip) {true}
set vars(place,save_design,replace_tcl) {innovus-foundation-flow/custom-scripts/embed-return.tcl}
set vars(place,set_opt_mode) {setOptMode  -fixFanoutLoad true
}
set vars(place,set_place_mode) {setPlaceMode  -place_global_cong_effort medium -place_global_clock_gate_aware true -place_global_place_io_pins false
}
set vars(place,time_design,skip) {true}
set vars(place_io_pins) {false}
set vars(place_opt_design) {true}
set vars(placement_based_ptn) {0}
set vars(plugins) {always_source_tcl}
set vars(plugins_defined) {always_source_tcl}
set vars(plugins_found) {always_source_tcl}
set vars(post_cts_sdc) {./inputs/design.sdc}
set vars(postcts_hold,restore_design,skip) {true}
set vars(postcts_hold,save_design,replace_tcl) {innovus-foundation-flow/custom-scripts/embed-return.tcl}
set vars(postcts_hold,set_opt_mode) {setOptMode  -fixHoldAllowSetupTnsDegrade true
}
set vars(postcts_setup_hold) {false}
set vars(postroute,restore_design,skip) {true}
set vars(postroute,save_design,replace_tcl) {innovus-foundation-flow/custom-scripts/embed-return.tcl}
set vars(postroute,set_analysis_mode) {setAnalysisMode -cppr both 
}
set vars(postroute,set_extract_rc_mode) {setExtractRCMode -engine postRoute -effortLevel low
}
set vars(postroute_extraction_effort) {low}
set vars(postroute_hold,set_extract_rc_mode) {setExtractRCMode -engine postRoute -effortLevel low
}
set vars(postroute_setup_hold) {true}
set vars(postroute_spread_wires) {true}
set vars(power_analysis_view) {analysis_default}
set vars(power_effort) {high}
set vars(power_nets) {VDD VNW VDDPST POC VDDCE VDDPE}
set vars(pre_cts_sdc) {./inputs/design.sdc}
set vars(preroute_opt_design) {false}
set vars(proc_file) {1}
set vars(process) {130}
set vars(qxconf_file) {}
set vars(qxlayermap_file) {}
set vars(qxlib_file) {}
set vars(qxtech_file) {}
set vars(rc) {false}
set vars(rc_corners) {typical}
set vars(remote_hosts) {0}
set vars(report_power) {false}
set vars(report_run_time) {true}
set vars(report_system_info) {true}
set vars(required_procs) {source_file system_info singular size get_clock_ports report_time insert_welltaps_endcaps  save_results load_applet get_tool load_path_groups }
set vars(resize_shifter_and_iso_insts) {true}
set vars(restore_design) {1}
set vars(results_dir) {results}
set vars(route,check_place,skip) {true}
set vars(route,restore_design,skip) {true}
set vars(route,save_design,replace_tcl) {innovus-foundation-flow/custom-scripts/embed-return.tcl}
set vars(route,set_nanoroute_mode) {
setNanoRouteMode  -drouteUseMultiCutViaEffort high -routeWithLithoDriven true -routeAntennaCellName sky130_fd_sc_hd__diode_2 -routeInsertAntennaDiode true
}
set vars(route,time_design,skip) {true}
set vars(route_clock_nets) {true}
set vars(route_opt,check_place,skip) {true}
set vars(route_opt,time_design,skip) {true}
set vars(route_opt_design) {false}
set vars(rpt_dir) {reports}
set vars(run_clp) {true}
set vars(run_lec) {true}
set vars(rundir_namechange_method) {suffix}
set vars(save_constraints) {0}
set vars(script_path) {./SCRIPTS}
set vars(script_root) {SCRIPTS}
set vars(seed) {1}
set vars(setup_analysis_views) {analysis_default}
set vars(setup_path) {.}
set vars(setup_tcl) {./setup.tcl}
set vars(signoff,restore_design,skip) {true}
set vars(signoff,save_design,replace_tcl) {innovus-foundation-flow/custom-scripts/embed-return.tcl}
set vars(signoff,stream_out,replace_tcl) {innovus-foundation-flow/custom-scripts/stream-out.tcl}
set vars(signoff,summary_report,replace_tcl) {innovus-foundation-flow/custom-scripts/summary-report.tcl}
set vars(signoff,verify_metal_density,skip) {true}
set vars(signoff_extraction_effort) {low}
set vars(skip_cts) {false}
set vars(skip_signoff_checks) {false}
set vars(sourced) {true}
set vars(step) {debug}
set vars(step_arg) {all}
set vars(step_scripts_dir) {scripts}
set vars(steps) {init place prects cts postcts postcts_hold route postroute postroute_hold signoff}
set vars(stop_step) {signoff}
set vars(style) {none}
set vars(superhosts) {0}
set vars(superthreads) {1}
set vars(synth_flow) {default_synthesis_flow_3step}
set vars(tagged) {init,save_design,replace_tcl place,restore_design,skip place,save_design,replace_tcl cts,set_ccopt_mode,skip cts,restore_design,skip cts,save_design,replace_tcl postcts_hold,restore_design,skip postcts_hold,save_design,replace_tcl route,check_place,skip route,time_design,skip route,restore_design,skip route,save_design,replace_tcl postroute,restore_design,skip postroute,save_design,replace_tcl signoff,stream_out,replace_tcl signoff,summary_report,replace_tcl signoff,verify_metal_density,skip signoff,restore_design,skip signoff,save_design,replace_tcl}
set vars(tags,verbose) {true}
set vars(tags,verbosity_level) {high}
set vars(threads) {1}
set vars(tie_cells) {sky130_fd_sc_hd__conb_1}
set vars(tie_cells,max_distance) {20}
set vars(tie_cells,max_fanout) {8}
set vars(time_design_options,hold) {-expandedViews}
set vars(time_design_options,setup) {-expandedViews}
set vars(time_info_db) {reports/time_info.db}
set vars(time_info_rpt) {reports/time_info.rpt}
set vars(timelib) {}
set vars(timelib,max) {inputs/adk/stdcells.lib inputs/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib}
set vars(timelib,min) {inputs/adk/stdcells-bc.lib}
set vars(top) {0}
set vars(top_cell) {deconv_kernel_estimator_top_level}
set vars(track_opt) {false}
set vars(typical,T) {25}
set vars(typical,cap_table) {inputs/adk/rtk-typical.captable}
set vars(uniquify_netlist) {1}
set vars(update_io_latency) {true}
set vars(use_flexmodels) {0}
set vars(use_proto_net_delay_model) {false}
set vars(user_comments) {0}
set vars(user_mode) {flat}
set vars(verbose) {true}
set vars(verify_litho) {false}
set vars(version) {18.1.0}
set vars(vpath) {make}
set vars(warning_count) {4}
set vars(wc_cap_table) {inputs/adk/rtk-typical.captable}
set vars(restore_design) {true}
