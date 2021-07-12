/* Top-Level Digital Design. */

module digital_top_level #(
    parameter DATA_WIDTH = 16,
    parameter ADC_BITS = 8,
    parameter FRAC_BITS = 13,
    parameter FILTER_ORDER = 2,
    parameter LATENCY = 4,
    parameter ADDR_WIDTH = 12,          /* Equal to ceil(log2(DEPTH))+1. */
    parameter DEPTH = 2048
)
(
    input clk,
    input rst_n,
    input load_en,
    input debug_en,
    input serial_in,
    input [1:0] sram_select,
    input adc_bypass_en,
    input adc_start,
    input frequency_comparator_val,
    input amplitude_comparator_val,
    output [ADC_BITS-1:0] sig_frequency,
    output [ADC_BITS-1:0] sig_amplitude,
    output serial_out,
    output serial_out_valid,
    output freq_eval_done,
    output run_adc_n
)

    reg frequency_adc_done;
    reg amplitude_adc_done;
    reg frequency_run_adc_n;
    reg amplitude_run_adc_n;

    assign run_adc_n = frequency_run_adc_n;

    /* Instantiate the frequency SAR ADC controller module. */
    sar_adc_controller #(
        .BITS(ADC_BITS)
    ) frequency_sar_adc_controller_inst (
        .clk(clk),
        .rst_n(rst_n),
        .adc_start(adc_start),
        .comparator_val(frequency_comparator_val),
        .run_adc_n(frequency_run_adc_n),
        .adc_val(sig_frequency),
        .out_valid(frequency_adc_done)
    );

    /* Instantiate the amplitude SAR ADC controller module. */
    sar_adc_controller #(
        .BITS(ADC_BITS)
    ) amplitude_sar_adc_controller_inst (
        .clk(clk),
        .rst_n(rst_n),
        .adc_start(adc_start),
        .comparator_val(amplitude_comparator_val),
        .run_adc_n(amplitude_run_adc_n),
        .adc_val(sig_amplitude),
        .out_valid(amplitude_adc_done)
    );

    // Instantiate the top-level deconvolution kernel estimator module.
    deconv_kernel_estimator_top_level #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADC_BITS(ADC_BITS),
        .FRAC_BITS(FRAC_BITS),
        .FILTER_ORDER(FILTER_ORDER),
        .LATENCY(LATENCY),
        .ADDR_WIDTH(ADDR_WIDTH),
        .DEPTH(DEPTH)
    ) deconv_kernel_estimator_top_level_inst (
        .clk(clk),
        .rst_n(rst_n),
        .load_en(load_en),
        .debug_en(debug_en),
        .serial_in(serial_in),
        .sram_select(sram_select),
        .frequency_adc_done(frequency_adc_done),
        .amplitude_adc_done(amplitude_adc_done),
        .sig_frequency(sig_frequency),
        .sig_amplitude(sig_amplitude),
        .adc_bypass_en(adc_bypass_en),
        .serial_out(serial_out),
        .serial_out_valid(serial_out_valid),
        .freq_eval_done(freq_eval_done)
    );
endmodule