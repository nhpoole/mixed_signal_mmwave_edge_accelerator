###################################################################

# Created by write_sdc on Mon Jul 19 16:02:25 2021

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_max_fanout 20 [current_design]
set_max_transition 5 [current_design]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -no_design_rule [get_ports clk]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -no_design_rule [get_ports rst_n]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -no_design_rule [get_ports adc_start]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -no_design_rule [get_ports comparator_val]
set_load -pin_load 0.009 [get_ports run_adc_n]
set_load -pin_load 0.009 [get_ports {adc_val[7]}]
set_load -pin_load 0.009 [get_ports {adc_val[6]}]
set_load -pin_load 0.009 [get_ports {adc_val[5]}]
set_load -pin_load 0.009 [get_ports {adc_val[4]}]
set_load -pin_load 0.009 [get_ports {adc_val[3]}]
set_load -pin_load 0.009 [get_ports {adc_val[2]}]
set_load -pin_load 0.009 [get_ports {adc_val[1]}]
set_load -pin_load 0.009 [get_ports {adc_val[0]}]
set_load -pin_load 0.009 [get_ports out_valid]
create_clock [get_ports clk]  -name ideal_clock  -period 20  -waveform {0 10}
group_path -name FEEDTHROUGH  -from [list [get_ports rst_n] [get_ports adc_start] [get_ports comparator_val]]  -to [list [get_ports run_adc_n] [get_ports {adc_val[7]}] [get_ports {adc_val[6]}] [get_ports {adc_val[5]}] [get_ports {adc_val[4]}] [get_ports {adc_val[3]}] [get_ports {adc_val[2]}] [get_ports {adc_val[1]}] [get_ports {adc_val[0]}] [get_ports out_valid]]
group_path -name REGIN  -from [list [get_ports rst_n] [get_ports adc_start] [get_ports comparator_val]]
group_path -name REGOUT  -to [list [get_ports run_adc_n] [get_ports {adc_val[7]}] [get_ports {adc_val[6]}] [get_ports {adc_val[5]}] [get_ports {adc_val[4]}] [get_ports {adc_val[3]}] [get_ports {adc_val[2]}] [get_ports {adc_val[1]}] [get_ports {adc_val[0]}] [get_ports out_valid]]
set_input_delay -clock ideal_clock  10  [get_ports clk]
set_input_delay -clock ideal_clock  10  [get_ports rst_n]
set_input_delay -clock ideal_clock  10  [get_ports adc_start]
set_input_delay -clock ideal_clock  10  [get_ports comparator_val]
set_output_delay -clock ideal_clock  0  [get_ports run_adc_n]
set_output_delay -clock ideal_clock  0  [get_ports {adc_val[7]}]
set_output_delay -clock ideal_clock  0  [get_ports {adc_val[6]}]
set_output_delay -clock ideal_clock  0  [get_ports {adc_val[5]}]
set_output_delay -clock ideal_clock  0  [get_ports {adc_val[4]}]
set_output_delay -clock ideal_clock  0  [get_ports {adc_val[3]}]
set_output_delay -clock ideal_clock  0  [get_ports {adc_val[2]}]
set_output_delay -clock ideal_clock  0  [get_ports {adc_val[1]}]
set_output_delay -clock ideal_clock  0  [get_ports {adc_val[0]}]
set_output_delay -clock ideal_clock  0  [get_ports out_valid]
