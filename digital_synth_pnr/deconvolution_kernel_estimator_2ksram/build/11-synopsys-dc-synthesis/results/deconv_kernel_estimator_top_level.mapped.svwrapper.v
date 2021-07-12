`ifndef SYNTHESIS

//
// This is an automatically generated file from 
// dc_shell Version L-2016.03-SP5-5 -- Apr 21, 2017
//

// For simulation only. Do not modify.

module deconv_kernel_estimator_top_level_svsim #(
    parameter DATA_WIDTH = 16,
    parameter ADC_BITS = 8,
    parameter FRAC_BITS = 13,
    parameter FILTER_ORDER = 2,
    parameter LATENCY = 4,
    parameter ADDR_WIDTH = 12,          
    parameter DEPTH = 2048
)
(
    input clk,
    input rst_n,
    input load_en,
    input debug_en,
    input serial_in,
    input [1:0] sram_select,
    input frequency_adc_done,
    input amplitude_adc_done,
    input wire unsigned [ADC_BITS-1:0] sig_frequency,
    input wire unsigned [ADC_BITS-1:0] sig_amplitude,
    input adc_bypass_en,
    output reg serial_out,
    output reg serial_out_valid,
    output reg freq_eval_done
);

    

  deconv_kernel_estimator_top_level deconv_kernel_estimator_top_level( 
        {>>{ clk }}, {>>{ rst_n }}, {>>{ load_en }}, {>>{ debug_en }}, 
        {>>{ serial_in }}, {>>{ sram_select }}, {>>{ frequency_adc_done }}, 
        {>>{ amplitude_adc_done }}, {>>{ sig_frequency }}, 
        {>>{ sig_amplitude }}, {>>{ adc_bypass_en }}, {>>{ serial_out }}, 
        {>>{ serial_out_valid }}, {>>{ freq_eval_done }} );
endmodule
`endif
