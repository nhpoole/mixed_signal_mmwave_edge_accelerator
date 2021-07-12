/* 8-Bit SAR ADC Controller Unit. */

`define STATE_WIDTH 2
`define SAMPLE 0
`define RESET 1
`define ADC_CONV 2
`define END_CONV 3

module sar_adc_controller #(
    parameter BITS = 8
)
(
    input clk,
    input rst_n,
    input adc_start,
    input comparator_val,
    output reg run_adc_n,
    output [BITS-1:0] adc_val,
    output reg out_valid
);
    reg run_adc_n;
    reg [`STATE_WIDTH-1:0] state_r;
    reg [BITS-1:0] dac_select_bits;
    reg [BITS-1:0] dac_mask;
    
    always @(posedge clk) begin
        if (~rst_n) begin
            run_adc_n <= 1;
            out_valid <= 0;
            dac_select_bits <= {BITS{1'b0}};
            dac_mask <= {BITS{1'b0}};
            state_r <= `SAMPLE;
        end
        else begin
            case (state_r)
                `SAMPLE : begin
                    run_adc_n <= 1;
                    out_valid <= 0;
                    dac_select_bits <= {BITS{1'b0}};
                    dac_mask <= {BITS{1'b0}};
                    state_r <= adc_start ? `RESET : `SAMPLE;
                end

                `RESET : begin
                    run_adc_n <= 0;
                    out_valid <= 0;
                    dac_select_bits <= {BITS{1'b0}};
                    dac_mask <= {1'b1, {(BITS-1){1'b0}}};
                    state_r <= `ADC_CONV;
                end

                `ADC_CONV : begin
                    run_adc_n <= 0;
                    out_valid <= 0;
                    dac_select_bits <= comparator_val ? (dac_select_bits | dac_mask) : dac_select_bits;                    
                    state_r <= dac_mask[0] ? `END_CONV : `ADC_CONV;
                    dac_mask <= dac_mask >> 1;
                end

                `END_CONV : begin
                    run_adc_n <= 0;
                    out_valid <= 1;
                    dac_mask <= {BITS{1'b0}};
                    state_r <= `END_CONV;
                end
            endcase            
        end
    end

    assign adc_val = dac_select_bits | dac_mask;
endmodule