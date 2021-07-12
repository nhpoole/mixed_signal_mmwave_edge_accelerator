# Makefile for digital blocks verification.

debug_iir: run_iir
	dve -full64 -vpd dump_iir.vcd &

run_iir: compile_iir
	./simv

compile_iir: 
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp iir_notch_filter_tb.v iir_notch_filter.v cordic_polar_to_rect.v cordic_rect_to_polar.v fixed_pt_div.v

debug_iir_debug: run_iir_debug
	dve -full64 -vpd dump_iir_debug.vcd &

run_iir_debug: compile_iir_debug
	./simv

compile_iir_debug: 
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp iir_notch_filter_debug_tb.v iir_notch_filter_debug.v cordic_polar_to_rect.v cordic_rect_to_polar.v fixed_pt_div.v

debug_adc: run_adc
	dve -full64 -vpd dump_adc.vcd &

run_adc: compile_adc
	./simv

compile_adc: 
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp sar_adc_controller_tb.v sar_adc_controller.v

debug_sram: run_sram
	dve -full64 -vpd dump_sram.vcd &

run_sram: compile_sram
	./simv

compile_sram: 
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp ram_sync_1rw1r_tb.v ram_sync_1rw1r.v sky130_sram_2kbyte_1rw1r_32x512_8.v sky130_sram_4kbyte_1rw1r_32x1024_8.v sky130_sram_8kbyte_1rw1r_32x2048_8.v

debug_input_sram_interface: run_input_sram_interface
	dve -full64 -vpd dump_input_sram_interface.vcd &

run_input_sram_interface: compile_input_sram_interface
	./simv

compile_input_sram_interface: 
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp input_sram_interface_tb.v phase_vec_sram_interface.v tf_coeff_sram_interface.v deserializer.v serializer.v ram_sync_1rw1r.v sky130_sram_2kbyte_1rw1r_32x512_8.v sky130_sram_4kbyte_1rw1r_32x1024_8.v sky130_sram_8kbyte_1rw1r_32x2048_8.v

debug_output_sram_interface: run_output_sram_interface
	dve -full64 -vpd dump_output_sram_interface.vcd &

run_output_sram_interface: compile_output_sram_interface
	./simv

compile_output_sram_interface: 
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp output_sram_interface_tb.v deconv_kernel_magnitude_sram_interface.v deconv_kernel_phase_sram_interface.v serializer.v ram_sync_1rw1r.v sky130_sram_2kbyte_1rw1r_32x512_8.v sky130_sram_4kbyte_1rw1r_32x1024_8.v sky130_sram_8kbyte_1rw1r_32x2048_8.v

debug_top_level: run_top_level
	dve -full64 -vpd dump_deconv_kernel_estimator_top_level.vcd &

run_top_level: compile_top_level
	./simv

compile_top_level: 
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp deconv_kernel_estimator_top_level_tb.v deconv_kernel_estimator_top_level.v iir_notch_filter.v cordic_polar_to_rect.v cordic_rect_to_polar.v fixed_pt_div.v deconv_kernel_magnitude_sram_interface.v deconv_kernel_phase_sram_interface.v phase_vec_sram_interface.v tf_coeff_sram_interface.v deserializer.v serializer.v ram_sync_1rw1r.v sky130_sram_2kbyte_1rw1r_32x512_8.v sky130_sram_4kbyte_1rw1r_32x1024_8.v sky130_sram_8kbyte_1rw1r_32x2048_8.v

clean:
	rm -rf ./simv
	rm -rf simv.daidir/ 
	rm -rf *.vcd
	rm -rf csrc
	rm -rf ucli.key
	rm -rf vc_hdrs.h
	rm -rf DVEfiles
