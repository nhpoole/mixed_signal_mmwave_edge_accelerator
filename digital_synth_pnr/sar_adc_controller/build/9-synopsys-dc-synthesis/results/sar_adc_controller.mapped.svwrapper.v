`ifndef SYNTHESIS

//
// This is an automatically generated file from 
// dc_shell Version L-2016.03-SP5-5 -- Apr 21, 2017
//

// For simulation only. Do not modify.

module sar_adc_controller_svsim #(
    parameter BITS = 8
) (
    input clk,
    input rst_n,
    input adc_start,
    input comparator_val,
    output reg run_adc_n,
    output [BITS-1:0] adc_val,
    output reg out_valid
);
    

  sar_adc_controller sar_adc_controller( {>>{ clk }}, {>>{ rst_n }}, 
        {>>{ adc_start }}, {>>{ comparator_val }}, {>>{ run_adc_n }}, 
        {>>{ adc_val }}, {>>{ out_valid }} );
endmodule
`endif
