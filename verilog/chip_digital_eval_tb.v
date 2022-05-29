/* Chip Digital Section Evaluation Testbench. */

// General constants/definitions.
`define BITS 16
`define ADC_BITS 8
`define FREQ_VEC_LENGTH 1275
`define ADDR_WIDTH 12           // Equal to ceil(log2(DEPTH))+1.
`define DEPTH 2048
`define WAIT_BITS 5
`define FSM_STATE_WIDTH 4

// State machine state definitions.
`define IDLE 0
`define WAIT 1
`define INIT_RESET 2
`define PHASE_SRAM_LOAD 3
`define TF_COEFF_SRAM_LOAD 4
`define ADC_BYPASS_DATA_LOAD 5
`define ADC_BYPASS_SELECT 6
`define RUN_RESET 7
`define RUN_ADCS 8
`define RUN_DECONV_ENGINE 9
`define READ_ADC_DATA 10
`define READ_MAG_DATA 11
`define READ_PHASE_DATA 12
`define READ_PHASE_SRAM_DATA 13
`define READ_TF_COEFF_SRAM_DATA 14
`define EVAL_DONE 15

module chip_digital_eval_tb (
    input clk,
    input sys_rst_n,
    input kernel_start,
    input bypass_adc_eval,
    input freq_eval_done,
    input serial_out,
    input serial_out_valid,
    output reg rst_n,
    output reg load_en,
    output reg debug_en,
    output reg serial_in,
    output reg [1:0] sram_select,
    output reg adc_start,
    output reg adc_bypass_en,
    output reg chip_eval_done,
    output reg chip_adc_serial_data,
    output reg chip_mag_serial_data,
    output reg chip_phase_serial_data,
    output reg chip_phase_sram_serial_data,
    output reg chip_tf_coeff_sram_serial_data,
    output reg chip_adc_serial_data_valid,
    output reg chip_mag_serial_data_valid,
    output reg chip_phase_serial_data_valid,
    output reg chip_phase_sram_serial_data_valid,
    output reg chip_tf_coeff_sram_serial_data_valid
);
    wire unsigned [`ADC_BITS-1:0] sig_frequency;
    wire unsigned [`ADC_BITS-1:0] sig_amplitude;

    wire unsigned [`ADC_BITS-1:0] adc_bypass_frequency;
    wire unsigned [`ADC_BITS-1:0] adc_bypass_amplitude;
    wire unsigned [`BITS-1:0] adc_bypass_data;
    wire unsigned [`BITS-1:0] adc_data;

    reg unsigned [`BITS-1:0] phase_mem[`FREQ_VEC_LENGTH-1:0];
    reg unsigned [`BITS-1:0] tf_coeff_mem[(2*`DEPTH)-1:0];

    reg unsigned [`FSM_STATE_WIDTH-1:0] state_r;
    reg unsigned [`FSM_STATE_WIDTH-1:0] next_state;
    reg signed [`WAIT_BITS-1:0] wait_cntr;
    reg unsigned [`BITS-1:0] addr_idx_cntr;
    reg unsigned [`BITS-1:0] addr_bit_cntr;

    assign sig_frequency = `ADC_BITS'hc6;
    assign sig_amplitude = `ADC_BITS'h15;
    assign adc_data = {sig_amplitude, sig_frequency};

    assign adc_bypass_frequency = `ADC_BITS'h9e;
    assign adc_bypass_amplitude = `ADC_BITS'h15;
    assign adc_bypass_data = {{(`BITS-`ADDR_WIDTH+2){1'b0}},
        adc_bypass_amplitude[(`ADC_BITS-1):(`ADC_BITS-3)],
        adc_bypass_frequency[`ADC_BITS-1:1]};

    // Coefficients used for this simulation.
    /*assign a_coeffs[0] = `BITS'h2000;   // a0 = 1
    assign a_coeffs[1] = `BITS'hcee9;   // a1 -1.5340
    assign a_coeffs[2] = `BITS'h1541;   // a2 = 0.6642
    assign b_coeffs[0] = `BITS'h1aa1;   // b0 = 0.8321
    assign b_coeffs[1] = `BITS'hcee9;   // b1 = -1.5340
    assign b_coeffs[2] = `BITS'h1aa1;   // b2 = 0.8321*/

    initial begin
        $readmemh("./freq_vec_data.txt", phase_mem);
        $readmemh("./tf_coeff_data.txt", tf_coeff_mem);
    end

    always @(posedge clk) begin
        if (~sys_rst_n) begin
            state_r <= `IDLE;
        end
        else begin
            case (state_r)
                `IDLE : begin
                    rst_n <= 1;
                    adc_start <= 0;
                    adc_bypass_en <= 0;
                    debug_en <= 0;
                    load_en <= 0;
                    sram_select <= 2'b00;
                    addr_idx_cntr <= 0;
                    addr_bit_cntr <= 0;
                    serial_in <= 0;
                    chip_adc_serial_data <= 1;
                    chip_mag_serial_data <= 1;
                    chip_phase_serial_data <= 0;
                    chip_phase_sram_serial_data <= 1;
                    chip_tf_coeff_sram_serial_data <= 0;
                    chip_adc_serial_data_valid <= 0;
                    chip_mag_serial_data_valid <= 0;
                    chip_phase_serial_data_valid <= 0;
                    chip_phase_sram_serial_data_valid <= 0;
                    chip_tf_coeff_sram_serial_data_valid <= 0;
                    chip_eval_done <= 0;
                    wait_cntr <= 0;
                    next_state <= `IDLE;
                    state_r <= kernel_start ? `INIT_RESET : `IDLE;
                end

                `WAIT : begin
                    rst_n <= 1;
                    adc_start <= 0;
                    adc_bypass_en <= 0;
                    debug_en <= 0;
                    load_en <= 0;
                    addr_idx_cntr <= 0;
                    addr_bit_cntr <= 0;
                    serial_in <= 0;
                    chip_adc_serial_data <= 0;
                    chip_mag_serial_data <= 0;
                    chip_phase_serial_data <= 1;
                    chip_phase_sram_serial_data <= 0;
                    chip_tf_coeff_sram_serial_data <= 1;
                    chip_adc_serial_data_valid <= 0;
                    chip_mag_serial_data_valid <= 0;
                    chip_phase_serial_data_valid <= 0;
                    chip_phase_sram_serial_data_valid <= 0;
                    chip_tf_coeff_sram_serial_data_valid <= 0;
                    wait_cntr <= wait_cntr - 1;
                    state_r <= (wait_cntr == 0) ? next_state : `WAIT;
                end

                `INIT_RESET : begin
                    rst_n <= 0;
                    adc_start <= 0;
                    adc_bypass_en <= 0;
                    debug_en <= 0;
                    load_en <= 0;
                    sram_select <= 2'b00;
                    addr_idx_cntr <= 0;
                    addr_bit_cntr <= 0;
                    serial_in <= 0;
                    chip_adc_serial_data <= 1;
                    chip_mag_serial_data <= 1;
                    chip_phase_serial_data <= 0;
                    chip_phase_sram_serial_data <= 1;
                    chip_tf_coeff_sram_serial_data <= 0;
                    chip_adc_serial_data_valid <= 0;
                    chip_mag_serial_data_valid <= 0;
                    chip_phase_serial_data_valid <= 0;
                    chip_phase_sram_serial_data_valid <= 0;
                    chip_tf_coeff_sram_serial_data_valid <= 0;
                    chip_eval_done <= 0;
                    wait_cntr <= 0;
                    next_state <= `PHASE_SRAM_LOAD;
                    state_r <= `WAIT;
                end

                `PHASE_SRAM_LOAD : begin
                    rst_n <= 1;
                    adc_start <= 0;
                    adc_bypass_en <= 0;
                    debug_en <= 0;
                    load_en <= 1;
                    sram_select <= 2'b00;
                    addr_idx_cntr <= (addr_bit_cntr < (`BITS - 1)) ? addr_idx_cntr :
                        ((addr_idx_cntr < (`FREQ_VEC_LENGTH - 1)) ? (addr_idx_cntr + 1) : 0);
                    addr_bit_cntr <= (addr_bit_cntr < (`BITS - 1)) ? (addr_bit_cntr + 1) : 0;
                    serial_in <= phase_mem[addr_idx_cntr][addr_bit_cntr];
                    chip_adc_serial_data <= 1;
                    chip_mag_serial_data <= 1;
                    chip_phase_serial_data <= 0;
                    chip_phase_sram_serial_data <= 1;
                    chip_tf_coeff_sram_serial_data <= 0;
                    chip_adc_serial_data_valid <= 0;
                    chip_mag_serial_data_valid <= 0;
                    chip_phase_serial_data_valid <= 0;
                    chip_phase_sram_serial_data_valid <= 0;
                    chip_tf_coeff_sram_serial_data_valid <= 0;
                    chip_eval_done <= 0;
                    wait_cntr <= 1;
                    next_state <= `TF_COEFF_SRAM_LOAD;
                    state_r <= ((addr_idx_cntr == (`FREQ_VEC_LENGTH - 1)) &&
                        (addr_bit_cntr == (`BITS - 1))) ? `WAIT : `PHASE_SRAM_LOAD;
                end

                `TF_COEFF_SRAM_LOAD : begin
                    rst_n <= 1;
                    adc_start <= 0;
                    adc_bypass_en <= 0;
                    debug_en <= 0;
                    load_en <= 1;
                    sram_select <= 2'b01;
                    addr_idx_cntr <= (addr_bit_cntr < (`BITS - 1)) ? addr_idx_cntr :
                        ((addr_idx_cntr < ((2 * `DEPTH) - 1)) ? (addr_idx_cntr + 1) : 0);
                    addr_bit_cntr <= (addr_bit_cntr < (`BITS - 1)) ? (addr_bit_cntr + 1) : 0;
                    serial_in <= tf_coeff_mem[addr_idx_cntr][addr_bit_cntr];
                    chip_adc_serial_data <= 1;
                    chip_mag_serial_data <= 1;
                    chip_phase_serial_data <= 0;
                    chip_phase_sram_serial_data <= 1;
                    chip_tf_coeff_sram_serial_data <= 0;
                    chip_adc_serial_data_valid <= 0;
                    chip_mag_serial_data_valid <= 0;
                    chip_phase_serial_data_valid <= 0;
                    chip_phase_sram_serial_data_valid <= 0;
                    chip_tf_coeff_sram_serial_data_valid <= 0;
                    chip_eval_done <= 0;
                    wait_cntr <= 1;
                    next_state <= `ADC_BYPASS_DATA_LOAD;
                    state_r <= ((addr_idx_cntr == ((2 * `DEPTH) - 1)) &&
                        (addr_bit_cntr == (`BITS - 1))) ? `WAIT : `TF_COEFF_SRAM_LOAD;
                end

                `ADC_BYPASS_DATA_LOAD : begin
                    rst_n <= 1;
                    adc_start <= 0;
                    adc_bypass_en <= 1;
                    debug_en <= 0;
                    load_en <= (addr_bit_cntr < `BITS);
                    sram_select <= 2'b00;
                    addr_idx_cntr <= 0;
                    addr_bit_cntr <= (addr_bit_cntr < `BITS) ? (addr_bit_cntr + 1) : 0;
                    serial_in <= (addr_bit_cntr < `BITS) ? adc_bypass_data[addr_bit_cntr] : 0;
                    chip_adc_serial_data <= 1;
                    chip_mag_serial_data <= 1;
                    chip_phase_serial_data <= 0;
                    chip_phase_sram_serial_data <= 1;
                    chip_tf_coeff_sram_serial_data <= 0;
                    chip_adc_serial_data_valid <= 0;
                    chip_mag_serial_data_valid <= 0;
                    chip_phase_serial_data_valid <= 0;
                    chip_phase_sram_serial_data_valid <= 0;
                    chip_tf_coeff_sram_serial_data_valid <= 0;
                    chip_eval_done <= 0;
                    wait_cntr <= 0;
                    next_state <= `ADC_BYPASS_SELECT;
                    state_r <= (addr_bit_cntr == `BITS) ? `WAIT : `ADC_BYPASS_DATA_LOAD;
                end

                `ADC_BYPASS_SELECT : begin
                    rst_n <= 1;
                    adc_start <= 0;
                    adc_bypass_en <= bypass_adc_eval;
                    debug_en <= 0;
                    load_en <= 0;
                    sram_select <= 2'b00;
                    addr_idx_cntr <= 0;
                    addr_bit_cntr <= 0;
                    serial_in <= 0;
                    chip_adc_serial_data <= 1;
                    chip_mag_serial_data <= 1;
                    chip_phase_serial_data <= 0;
                    chip_phase_sram_serial_data <= 1;
                    chip_tf_coeff_sram_serial_data <= 0;
                    chip_adc_serial_data_valid <= 0;
                    chip_mag_serial_data_valid <= 0;
                    chip_phase_serial_data_valid <= 0;
                    chip_phase_sram_serial_data_valid <= 0;
                    chip_tf_coeff_sram_serial_data_valid <= 0;
                    chip_eval_done <= 0;
                    wait_cntr <= 0;
                    next_state <= `RUN_RESET;
                    state_r <= `RUN_RESET;
                end

                `RUN_RESET : begin
                    rst_n <= 0;
                    adc_start <= 0;
                    adc_bypass_en <= 0;
                    debug_en <= 0;
                    load_en <= 0;
                    sram_select <= 2'b00;
                    addr_idx_cntr <= 0;
                    addr_bit_cntr <= 0;
                    serial_in <= 0;
                    chip_adc_serial_data <= 1;
                    chip_mag_serial_data <= 1;
                    chip_phase_serial_data <= 0;
                    chip_phase_sram_serial_data <= 1;
                    chip_tf_coeff_sram_serial_data <= 0;
                    chip_adc_serial_data_valid <= 0;
                    chip_mag_serial_data_valid <= 0;
                    chip_phase_serial_data_valid <= 0;
                    chip_phase_sram_serial_data_valid <= 0;
                    chip_tf_coeff_sram_serial_data_valid <= 0;
                    chip_eval_done <= 0;
                    wait_cntr <= 1;
                    next_state <= `RUN_ADCS;
                    state_r <= `WAIT;
                end

                `RUN_ADCS : begin
                    rst_n <= 1;
                    adc_start <= 1;
                    adc_bypass_en <= 0;
                    debug_en <= 0;
                    load_en <= 0;
                    sram_select <= 2'b00;
                    addr_idx_cntr <= 0;
                    addr_bit_cntr <= 0;
                    serial_in <= 0;
                    chip_adc_serial_data <= 1;
                    chip_mag_serial_data <= 1;
                    chip_phase_serial_data <= 0;
                    chip_phase_sram_serial_data <= 1;
                    chip_tf_coeff_sram_serial_data <= 0;
                    chip_adc_serial_data_valid <= 0;
                    chip_mag_serial_data_valid <= 0;
                    chip_phase_serial_data_valid <= 0;
                    chip_phase_sram_serial_data_valid <= 0;
                    chip_tf_coeff_sram_serial_data_valid <= 0;
                    chip_eval_done <= 0;
                    wait_cntr <= 0;
                    next_state <= `RUN_DECONV_ENGINE;
                    state_r <= `WAIT;
                end

                `RUN_DECONV_ENGINE : begin
                    rst_n <= 1;
                    adc_start <= 0;
                    adc_bypass_en <= 0;
                    debug_en <= 0;
                    load_en <= 0;
                    sram_select <= 2'b00;
                    addr_idx_cntr <= 0;
                    addr_bit_cntr <= 0;
                    serial_in <= 0;
                    chip_adc_serial_data <= 1;
                    chip_mag_serial_data <= 1;
                    chip_phase_serial_data <= 0;
                    chip_phase_sram_serial_data <= 1;
                    chip_tf_coeff_sram_serial_data <= 0;
                    chip_adc_serial_data_valid <= 0;
                    chip_mag_serial_data_valid <= 0;
                    chip_phase_serial_data_valid <= 0;
                    chip_phase_sram_serial_data_valid <= 0;
                    chip_tf_coeff_sram_serial_data_valid <= 0;
                    chip_eval_done <= 0;
                    wait_cntr <= 0;
                    next_state <= `READ_ADC_DATA;
                    state_r <= freq_eval_done ? `WAIT : `RUN_DECONV_ENGINE;
                end

                `READ_ADC_DATA : begin
                    rst_n <= 1;
                    adc_start <= 0;
                    adc_bypass_en <= 1;
                    debug_en <= 1;
                    load_en <= 0;
                    sram_select <= 2'b10;
                    addr_idx_cntr <= 0;
                    addr_bit_cntr <= serial_out_valid ? ((addr_bit_cntr < (`BITS - 1)) ? (addr_bit_cntr + 1) : 0) : 0;
                    serial_in <= 0;
                    chip_adc_serial_data <= serial_out_valid ? serial_out : 1;
                    chip_mag_serial_data <= 1;
                    chip_phase_serial_data <= 0;
                    chip_phase_sram_serial_data <= 1;
                    chip_tf_coeff_sram_serial_data <= 0;
                    chip_adc_serial_data_valid <= serial_out_valid;
                    chip_mag_serial_data_valid <= 0;
                    chip_phase_serial_data_valid <= 0;
                    chip_phase_sram_serial_data_valid <= 0;
                    chip_tf_coeff_sram_serial_data_valid <= 0;
                    chip_eval_done <= 0;
                    wait_cntr <= 4;
                    next_state <= `READ_MAG_DATA;
                    state_r <= (addr_bit_cntr == (`BITS - 1)) ? `WAIT : `READ_ADC_DATA;
                end

                `READ_MAG_DATA : begin
                    rst_n <= 1;
                    adc_start <= 0;
                    adc_bypass_en <= 0;
                    debug_en <= 1;
                    load_en <= 0;
                    sram_select <= 2'b10;
                    addr_idx_cntr <= serial_out_valid ? ((addr_bit_cntr < (`BITS - 1)) ? addr_idx_cntr :
                        ((addr_idx_cntr < (`FREQ_VEC_LENGTH - 1)) ? (addr_idx_cntr + 1) : 0)) : 0;
                    addr_bit_cntr <= serial_out_valid ? ((addr_bit_cntr < (`BITS - 1)) ? (addr_bit_cntr + 1) : 0) : 0;
                    serial_in <= 0;
                    chip_adc_serial_data <= 1;
                    chip_mag_serial_data <= serial_out_valid ? serial_out : 1;
                    chip_phase_serial_data <= 0;
                    chip_phase_sram_serial_data <= 1;
                    chip_tf_coeff_sram_serial_data <= 0;
                    chip_adc_serial_data_valid <= 0;
                    chip_mag_serial_data_valid <= serial_out_valid;
                    chip_phase_serial_data_valid <= 0;
                    chip_phase_sram_serial_data_valid <= 0;
                    chip_tf_coeff_sram_serial_data_valid <= 0;
                    chip_eval_done <= 0;
                    wait_cntr <= 4;
                    next_state <= `READ_PHASE_DATA;
                    state_r <= ((addr_idx_cntr == (`FREQ_VEC_LENGTH - 1)) &&
                        (addr_bit_cntr == (`BITS - 1))) ? `WAIT : `READ_MAG_DATA;
                end

                `READ_PHASE_DATA : begin
                    rst_n <= 1;
                    adc_start <= 0;
                    adc_bypass_en <= 0;
                    debug_en <= 1;
                    load_en <= 0;
                    sram_select <= 2'b11;
                    addr_idx_cntr <= serial_out_valid ? ((addr_bit_cntr < (`BITS - 1)) ? addr_idx_cntr :
                        ((addr_idx_cntr < (`FREQ_VEC_LENGTH - 1)) ? (addr_idx_cntr + 1) : 0)) : 0;
                    addr_bit_cntr <= serial_out_valid ? ((addr_bit_cntr < (`BITS - 1)) ? (addr_bit_cntr + 1) : 0) : 0;
                    serial_in <= 0;
                    chip_adc_serial_data <= 1;
                    chip_mag_serial_data <= 1;
                    chip_phase_serial_data <= serial_out_valid ? serial_out : 0;
                    chip_phase_sram_serial_data <= 1;
                    chip_tf_coeff_sram_serial_data <= 0;
                    chip_adc_serial_data_valid <= 0;
                    chip_mag_serial_data_valid <= 0;
                    chip_phase_serial_data_valid <= serial_out_valid;
                    chip_phase_sram_serial_data_valid <= 0;
                    chip_tf_coeff_sram_serial_data_valid <= 0;
                    chip_eval_done <= 0;
                    wait_cntr <= 4;
                    next_state <= `READ_PHASE_SRAM_DATA;
                    state_r <= ((addr_idx_cntr == (`FREQ_VEC_LENGTH - 1)) &&
                        (addr_bit_cntr == (`BITS - 1))) ? `WAIT : `READ_PHASE_DATA;
                end
                
                `READ_PHASE_SRAM_DATA : begin
                    rst_n <= 1;
                    adc_start <= 0;
                    adc_bypass_en <= 0;
                    debug_en <= 1;
                    load_en <= 0;
                    sram_select <= 2'b00;
                    addr_idx_cntr <= serial_out_valid ? ((addr_bit_cntr < (`BITS - 1)) ? addr_idx_cntr :
                        ((addr_idx_cntr < (`FREQ_VEC_LENGTH - 1)) ? (addr_idx_cntr + 1) : 0)) : 0;
                    addr_bit_cntr <= serial_out_valid ? ((addr_bit_cntr < (`BITS - 1)) ? (addr_bit_cntr + 1) : 0) : 0;
                    serial_in <= 0;
                    chip_adc_serial_data <= 1;
                    chip_mag_serial_data <= 1;
                    chip_phase_serial_data <= 0;
                    chip_phase_sram_serial_data <= serial_out_valid ? serial_out : 1;
                    chip_tf_coeff_sram_serial_data <= 0;
                    chip_adc_serial_data_valid <= 0;
                    chip_mag_serial_data_valid <= 0;
                    chip_phase_serial_data_valid <= 0;
                    chip_phase_sram_serial_data_valid <= serial_out_valid;
                    chip_tf_coeff_sram_serial_data_valid <= 0;
                    chip_eval_done <= 0;
                    wait_cntr <= 4;
                    next_state <= `READ_TF_COEFF_SRAM_DATA;
                    state_r <= ((addr_idx_cntr == (`FREQ_VEC_LENGTH - 1)) &&
                        (addr_bit_cntr == (`BITS - 1))) ? `WAIT : `READ_PHASE_SRAM_DATA;
                end

                `READ_TF_COEFF_SRAM_DATA : begin
                    rst_n <= 1;
                    adc_start <= 0;
                    adc_bypass_en <= 0;
                    debug_en <= 1;
                    load_en <= 0;
                    sram_select <= 2'b01;
                    addr_idx_cntr <= serial_out_valid ? ((addr_bit_cntr < (`BITS - 1)) ? addr_idx_cntr :
                        ((addr_idx_cntr < ((2 * `DEPTH) - 1)) ? (addr_idx_cntr + 1) : 0)) : 0;
                    addr_bit_cntr <= serial_out_valid ? ((addr_bit_cntr < (`BITS - 1)) ? (addr_bit_cntr + 1) : 0) : 0;
                    serial_in <= 0;
                    chip_adc_serial_data <= 1;
                    chip_mag_serial_data <= 1;
                    chip_phase_serial_data <= 0;
                    chip_phase_sram_serial_data <= 1;
                    chip_tf_coeff_sram_serial_data <= serial_out_valid ? serial_out : 0;
                    chip_adc_serial_data_valid <= 0;
                    chip_mag_serial_data_valid <= 0;
                    chip_phase_serial_data_valid <= 0;
                    chip_phase_sram_serial_data_valid <= 0;
                    chip_tf_coeff_sram_serial_data_valid <= serial_out_valid;
                    chip_eval_done <= 0;
                    wait_cntr <= 0;
                    next_state <= `EVAL_DONE;
                    state_r <= ((addr_idx_cntr == ((2 * `DEPTH) - 1)) &&
                        (addr_bit_cntr == (`BITS - 1))) ? `EVAL_DONE : `READ_TF_COEFF_SRAM_DATA;
                end

                `EVAL_DONE : begin
                    rst_n <= 1;
                    adc_start <= 0;
                    adc_bypass_en <= 0;
                    debug_en <= 0;
                    load_en <= 0;
                    sram_select <= 2'b00;
                    addr_idx_cntr <= 0;
                    addr_bit_cntr <= 0;
                    serial_in <= 0;
                    chip_adc_serial_data <= 1;
                    chip_mag_serial_data <= 1;
                    chip_phase_serial_data <= 0;
                    chip_phase_sram_serial_data <= 1;
                    chip_tf_coeff_sram_serial_data <= 0;
                    chip_adc_serial_data_valid <= 0;
                    chip_mag_serial_data_valid <= 0;
                    chip_phase_serial_data_valid <= 0;
                    chip_phase_sram_serial_data_valid <= 0;
                    chip_tf_coeff_sram_serial_data_valid <= 0;
                    chip_eval_done <= 1;
                    wait_cntr <= 10;
                    next_state <= `IDLE;
                    state_r <= `WAIT;
                end
            endcase
        end
    end
endmodule