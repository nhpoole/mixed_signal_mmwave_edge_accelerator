###############################################################
#  Generated by:      Cadence Innovus 20.13-s083_1
#  OS:                Linux x86_64(Host ID caddy13)
#  Generated on:      Mon Jul 19 16:43:34 2021
#  Design:            sar_adc_controller
#  Command:           writeTimingCon results/sar_adc_controller.pt.sdc
###############################################################
#current_design sar_adc_controller
create_clock [get_ports {clk}]  -name ideal_clock -period 20.000000 -waveform {0.000000 10.000000}
set_propagated_clock  [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -rise -min -no_design_rule [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -fall -min -no_design_rule [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -rise -max -no_design_rule [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -fall -max -no_design_rule [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -rise -min -no_design_rule [get_ports {rst_n}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -fall -min -no_design_rule [get_ports {rst_n}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -rise -max -no_design_rule [get_ports {rst_n}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -fall -max -no_design_rule [get_ports {rst_n}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -rise -min -no_design_rule [get_ports {adc_start}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -fall -min -no_design_rule [get_ports {adc_start}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -rise -max -no_design_rule [get_ports {adc_start}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -fall -max -no_design_rule [get_ports {adc_start}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -rise -min -no_design_rule [get_ports {comparator_val}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -fall -min -no_design_rule [get_ports {comparator_val}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -rise -max -no_design_rule [get_ports {comparator_val}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -fall -max -no_design_rule [get_ports {comparator_val}]
set_load -pin_load -max  0.009  [get_ports {run_adc_n}]
set_load -pin_load -min  0.009  [get_ports {run_adc_n}]
set_load -pin_load -max  0.009  [get_ports {adc_val[7]}]
set_load -pin_load -min  0.009  [get_ports {adc_val[7]}]
set_load -pin_load -max  0.009  [get_ports {adc_val[6]}]
set_load -pin_load -min  0.009  [get_ports {adc_val[6]}]
set_load -pin_load -max  0.009  [get_ports {adc_val[5]}]
set_load -pin_load -min  0.009  [get_ports {adc_val[5]}]
set_load -pin_load -max  0.009  [get_ports {adc_val[4]}]
set_load -pin_load -min  0.009  [get_ports {adc_val[4]}]
set_load -pin_load -max  0.009  [get_ports {adc_val[3]}]
set_load -pin_load -min  0.009  [get_ports {adc_val[3]}]
set_load -pin_load -max  0.009  [get_ports {adc_val[2]}]
set_load -pin_load -min  0.009  [get_ports {adc_val[2]}]
set_load -pin_load -max  0.009  [get_ports {adc_val[1]}]
set_load -pin_load -min  0.009  [get_ports {adc_val[1]}]
set_load -pin_load -max  0.009  [get_ports {adc_val[0]}]
set_load -pin_load -min  0.009  [get_ports {adc_val[0]}]
set_load -pin_load -max  0.009  [get_ports {out_valid}]
set_load -pin_load -min  0.009  [get_ports {out_valid}]
set_max_fanout 20  [current_design]
set_max_transition 5  [current_design]
set_input_delay -add_delay 10 -clock [get_clocks {ideal_clock}] [get_ports {comparator_val}]
set_input_delay -add_delay 10 -clock [get_clocks {ideal_clock}] [get_ports {adc_start}]
set_input_delay -add_delay 10 -clock [get_clocks {ideal_clock}] [get_ports {rst_n}]
set_output_delay -add_delay 0 -clock [get_clocks {ideal_clock}] [get_ports {adc_val[6]}]
set_output_delay -add_delay 0 -clock [get_clocks {ideal_clock}] [get_ports {adc_val[4]}]
set_output_delay -add_delay 0 -clock [get_clocks {ideal_clock}] [get_ports {adc_val[2]}]
set_output_delay -add_delay 0 -clock [get_clocks {ideal_clock}] [get_ports {adc_val[0]}]
set_output_delay -add_delay 0 -clock [get_clocks {ideal_clock}] [get_ports {out_valid}]
set_output_delay -add_delay 0 -clock [get_clocks {ideal_clock}] [get_ports {adc_val[7]}]
set_output_delay -add_delay 0 -clock [get_clocks {ideal_clock}] [get_ports {adc_val[5]}]
set_output_delay -add_delay 0 -clock [get_clocks {ideal_clock}] [get_ports {adc_val[3]}]
set_output_delay -add_delay 0 -clock [get_clocks {ideal_clock}] [get_ports {adc_val[1]}]
set_output_delay -add_delay 0 -clock [get_clocks {ideal_clock}] [get_ports {run_adc_n}]
group_path -name In2Reg -from [get_ports {rst_n adc_start comparator_val}]  -to [get_pins {clk_gate_dac_select_bits_reg/latch/GATE clk_gate_dac_select_bits_reg/latch/SCE clk_gate_dac_select_bits_reg/latch/M0 dac_mask_reg_0_/D state_r_reg_0_/D state_r_reg_1_/D out_valid_reg/D run_adc_n_reg/D dac_mask_reg_7_/D dac_select_bits_reg_0_/D dac_select_bits_reg_7_/D dac_mask_reg_6_/D dac_select_bits_reg_6_/D dac_mask_reg_5_/D dac_select_bits_reg_5_/D dac_mask_reg_4_/D dac_select_bits_reg_4_/D dac_mask_reg_3_/D dac_select_bits_reg_3_/D dac_mask_reg_2_/D dac_select_bits_reg_2_/D dac_mask_reg_1_/D dac_select_bits_reg_1_/D}] 
group_path -name In2Out -from [get_ports {rst_n adc_start comparator_val}]  -to [get_ports {run_adc_n adc_val[7] adc_val[6] adc_val[5] adc_val[4] adc_val[3] adc_val[2] adc_val[1] adc_val[0] out_valid}] 
group_path -name Reg2Out -from [get_pins {clk_gate_dac_select_bits_reg/latch/CLK dac_mask_reg_0_/CLK state_r_reg_0_/CLK state_r_reg_1_/CLK out_valid_reg/CLK run_adc_n_reg/CLK dac_mask_reg_7_/CLK dac_select_bits_reg_0_/CLK dac_select_bits_reg_7_/CLK dac_mask_reg_6_/CLK dac_select_bits_reg_6_/CLK dac_mask_reg_5_/CLK dac_select_bits_reg_5_/CLK dac_mask_reg_4_/CLK dac_select_bits_reg_4_/CLK dac_mask_reg_3_/CLK dac_select_bits_reg_3_/CLK dac_mask_reg_2_/CLK dac_select_bits_reg_2_/CLK dac_mask_reg_1_/CLK dac_select_bits_reg_1_/CLK}]  -to [get_ports {run_adc_n adc_val[7] adc_val[6] adc_val[5] adc_val[4] adc_val[3] adc_val[2] adc_val[1] adc_val[0] out_valid}] 
group_path -name Reg2Reg -from [get_pins {dac_mask_reg_0_/CLK state_r_reg_0_/CLK state_r_reg_1_/CLK out_valid_reg/CLK run_adc_n_reg/CLK dac_mask_reg_7_/CLK dac_select_bits_reg_0_/CLK dac_select_bits_reg_7_/CLK dac_mask_reg_6_/CLK dac_select_bits_reg_6_/CLK dac_mask_reg_5_/CLK dac_select_bits_reg_5_/CLK dac_mask_reg_4_/CLK dac_select_bits_reg_4_/CLK dac_mask_reg_3_/CLK dac_select_bits_reg_3_/CLK dac_mask_reg_2_/CLK dac_select_bits_reg_2_/CLK dac_mask_reg_1_/CLK dac_select_bits_reg_1_/CLK}]  -to [get_pins {dac_mask_reg_0_/D state_r_reg_0_/D state_r_reg_1_/D out_valid_reg/D run_adc_n_reg/D dac_mask_reg_7_/D dac_select_bits_reg_0_/D dac_select_bits_reg_7_/D dac_mask_reg_6_/D dac_select_bits_reg_6_/D dac_mask_reg_5_/D dac_select_bits_reg_5_/D dac_mask_reg_4_/D dac_select_bits_reg_4_/D dac_mask_reg_3_/D dac_select_bits_reg_3_/D dac_mask_reg_2_/D dac_select_bits_reg_2_/D dac_mask_reg_1_/D dac_select_bits_reg_1_/D}] 
group_path -name Reg2ClkGate -from [get_pins {clk_gate_dac_select_bits_reg/latch/CLK dac_mask_reg_0_/CLK state_r_reg_0_/CLK state_r_reg_1_/CLK out_valid_reg/CLK run_adc_n_reg/CLK dac_mask_reg_7_/CLK dac_select_bits_reg_0_/CLK dac_select_bits_reg_7_/CLK dac_mask_reg_6_/CLK dac_select_bits_reg_6_/CLK dac_mask_reg_5_/CLK dac_select_bits_reg_5_/CLK dac_mask_reg_4_/CLK dac_select_bits_reg_4_/CLK dac_mask_reg_3_/CLK dac_select_bits_reg_3_/CLK dac_mask_reg_2_/CLK dac_select_bits_reg_2_/CLK dac_mask_reg_1_/CLK dac_select_bits_reg_1_/CLK}]  -to [get_pins {clk_gate_dac_select_bits_reg/latch/GATE clk_gate_dac_select_bits_reg/latch/SCE clk_gate_dac_select_bits_reg/latch/M0}] 
set_clock_latency -source -early -min -rise  -0.228377 [get_ports {clk}] -clock ideal_clock 
set_clock_latency -source -early -min -fall  -0.182777 [get_ports {clk}] -clock ideal_clock 
set_clock_latency -source -early -max -rise  -0.228377 [get_ports {clk}] -clock ideal_clock 
set_clock_latency -source -early -max -fall  -0.182777 [get_ports {clk}] -clock ideal_clock 
set_clock_latency -source -late -min -rise  -0.228377 [get_ports {clk}] -clock ideal_clock 
set_clock_latency -source -late -min -fall  -0.182777 [get_ports {clk}] -clock ideal_clock 
set_clock_latency -source -late -max -rise  -0.228377 [get_ports {clk}] -clock ideal_clock 
set_clock_latency -source -late -max -fall  -0.182777 [get_ports {clk}] -clock ideal_clock 
