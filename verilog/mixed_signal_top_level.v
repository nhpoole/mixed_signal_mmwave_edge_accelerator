`default_nettype none
`timescale 1 ns / 1 ps

module mixed_signal_top_level (
    // Power ports.
    inout vccd1,
    inout vccd2,
    inout vssa1,
    inout vssd1,

    // Digital block inputs.
    input clk,
    input rst_n,
    input load_en,
    input debug_en,
    input serial_in,
    input sram_select_0,
    input sram_select_1,
    input adc_bypass_en,
    input adc_start,

    // Analog block inputs.
    input gain_ctrl_0,
    input gain_ctrl_1,
    input vbiasn,
    input vbiasp,
    input vhpf,
    input vincm,
    input vlow_amplitude,
    input vlow_frequency,
    input vocm,
    input vocm_filt,
    input vref_amplitude,
    input vref_frequency,

    // Digital block outputs.
    output frequency_comparator_val,
    output amplitude_comparator_val,
    output serial_out,
    output serial_out_valid,
    output freq_eval_done,

    // Analog block outputs.
    output vampm,
    output vampp,
    output vcompp,
    output vcp,
    output vcp_sampled,
    output vfiltm,
    output vfiltp,
    output vintm,
    output vintp,
    output vpeak,
    output vpeak_sampled,
    output vse
);

    wire mid, porb_h;
    reg inode;

    sky130_fd_sc_hvl__schmittbuf_1 hystbuf1 (
`ifdef USE_POWER_PINS
	.VPWR(vdd3v3),
	.VGND(vss),
	.VPB(vdd3v3),
	.VNB(vss),
`endif
	.A(inode),
	.X(mid)
    );

    sky130_fd_sc_hvl__schmittbuf_1 hystbuf2 (
`ifdef USE_POWER_PINS
	.VPWR(vdd3v3),
	.VGND(vss),
	.VPB(vdd3v3),
	.VNB(vss),
`endif
	.A(mid),
	.X(porb_h)
    );

    sky130_fd_sc_hvl__lsbufhv2lv_1 porb_level (
`ifdef USE_POWER_PINS
	.VPWR(vdd3v3),
	.VPB(vdd3v3),
	.LVPWR(vdd1v8),
	.VNB(vss),
	.VGND(vss),
`endif
	.A(porb_h),
	.X(porb_l)
    );

endmodule
`default_nettype wire
