/* Top-Level Deconvolution Kernel Estimator. */

`define STATE_WIDTH 3
`define IDLE 0
`define COMPUTE_IIR_COEFFS_A0 1
`define COMPUTE_IIR_COEFFS_A1_B1 2
`define COMPUTE_IIR_COEFFS_A2 3
`define COMPUTE_IIR_COEFFS_B0_B2 4
`define COMPUTE_IIR_COEFFS_WAIT_1 5
`define COMPUTE_IIR_COEFFS_WAIT_2 6
`define RUN_KERNEL_EVAL 7

module deconv_kernel_estimator_top_level #(
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
    input frequency_adc_done,
    input amplitude_adc_done,
    input wire unsigned [ADC_BITS-1:0] sig_frequency,
    input wire unsigned [ADC_BITS-1:0] sig_amplitude,
    input adc_bypass_en,
    output reg serial_out,
    output reg serial_out_valid,
    output reg freq_eval_done
);

    reg [`STATE_WIDTH-1:0] state_r;
    wire eval_deconv_kernel;

    reg [ADDR_WIDTH-1:0] config_nfft;
    reg [ADDR_WIDTH-1:0] nfft_cntr;
    reg nfft_cntr_en;
    reg nfft_cntr_en_d1;

    reg wdata_valid;
    reg [DATA_WIDTH-1:0] parallel_in;
    reg debug_en_d1;
    reg debug_en_d2;
    wire [DATA_WIDTH-1:0] rdata_mux;

    reg unsigned [ADDR_WIDTH-3:0] coeff_table_base_addr;
    reg unsigned [ADDR_WIDTH-3:0] coeff_table_base_addr_bypass;
    reg signed [DATA_WIDTH-1:0] a_coeffs[FILTER_ORDER:0];
    reg signed [DATA_WIDTH-1:0] b_coeffs[FILTER_ORDER:0];
    reg eval_iir_freq_resp;
    reg unsigned [DATA_WIDTH-1:0] phase_mem_data[1:0];
    reg unsigned [ADDR_WIDTH-1:0] phase_mem_indices[1:0];
    reg unsigned [DATA_WIDTH-1:0] tf_val_magnitude;
    reg unsigned [DATA_WIDTH-1:0] tf_val_phase;
    reg tf_val_valid;

    reg phase_vec_ren;
    reg phase_vec_rwen;

    reg tf_coeff_ren;
    reg tf_coeff_rwen;
    reg unsigned [ADDR_WIDTH-1:0] tf_coeff_radr;
    wire unsigned [ADDR_WIDTH-1:0] tf_coeff_rwadr;
    reg unsigned [DATA_WIDTH-1:0] tf_coeff_rdata;
    reg unsigned [DATA_WIDTH-1:0] tf_coeff_rwdata;

    reg unsigned [DATA_WIDTH-1:0] kernel_magnitude_rdata;
    reg unsigned [DATA_WIDTH-1:0] kernel_phase_rdata;

    wire phase_vec_sram_en;
    wire tf_coeff_sram_en;
    wire kernel_magnitude_sram_en;
    wire kernel_phase_vec_sram_en;

    // Deconvolution kernel evaluation trigger.
    assign eval_deconv_kernel = frequency_adc_done & amplitude_adc_done;

    // SRAM select decoder logic.
    assign phase_vec_sram_en = (sram_select == 2'b00);
    assign tf_coeff_sram_en = (sram_select == 2'b01);
    assign kernel_magnitude_sram_en = (sram_select == 2'b10);
    assign kernel_phase_sram_en = (sram_select == 2'b11);

    // Output data mux (select between phase/frequency vector SRAM data, transfer function coefficient
    // SRAM data, or kernel frequency response phase or magnitude SRAM data).
    assign rdata_mux = adc_bypass_en ? {sig_amplitude, sig_frequency} :
        ((sram_select == 2'b00) ? phase_mem_data[1] :
        ((sram_select == 2'b01) ? tf_coeff_rdata :
        ((sram_select == 2'b10) ? kernel_magnitude_rdata : kernel_phase_rdata)));

    // Determine config_nfft (i.e. length of the frequency evaluation vector).
    always @(posedge clk) begin
        if (rst_n) begin
            nfft_cntr_en <= load_en & phase_vec_sram_en & wdata_valid;
            nfft_cntr_en_d1 <= nfft_cntr_en;
            if (nfft_cntr_en) begin
                nfft_cntr <= nfft_cntr + 1;
            end
            if (nfft_cntr_en ^ nfft_cntr_en_d1) begin
                config_nfft <= nfft_cntr + 1;
            end
        end
        else begin
            nfft_cntr <= {ADDR_WIDTH{1'b0}};
            nfft_cntr_en <= 0;
            nfft_cntr_en_d1 <= 0;
        end
    end

    // Load the ADC frequency and amplitude in from off-chip to determine the coefficient table base address
    // if adc_bypass_en is enabled.
    always @(posedge clk) begin
        if (rst_n) begin
            if (adc_bypass_en & wdata_valid) begin
                coeff_table_base_addr_bypass <= parallel_in[ADDR_WIDTH-3:0];
            end
        end
    end

    // Compute the 10-bit base address for the coefficient table using the input signal frequency/amplitude.
    // The base address consists of the top 3 bits of the 8-bit amplitude concatenated with the top 7 bits
    // of the 8-bit frequency.
    assign coeff_table_base_addr = adc_bypass_en ? coeff_table_base_addr_bypass :
        {sig_amplitude[ADC_BITS-1:ADC_BITS-3], sig_frequency[ADC_BITS-1:1]};
    assign tf_coeff_rwadr = {ADDR_WIDTH{1'b0}};

    /* Instantiate the input deserializer module. */
    deserializer #(
        .FETCH_WIDTH(DATA_WIDTH)
    ) deserializer_inst (
        .clk(clk),
        .rst_n(rst_n),
        .serial_data(serial_in),
        .en(load_en),
        .parallel_data(parallel_in),
        .out_valid(wdata_valid)
    );

    /* Register the debug enable signal (delay of two clocks relative to input SRAM access). */
    always @(posedge clk) begin
        debug_en_d1 <= debug_en;
        debug_en_d2 <= debug_en_d1;
    end

    /* Instantiate the output serializer module. */
    serializer #(
        .FETCH_WIDTH(DATA_WIDTH)
    ) serializer_inst (
        .clk(clk),
        .rst_n(rst_n),
        .en(debug_en_d2),
        .parallel_data(rdata_mux),
        .sender_deq(serializer_rdy),
        .serial_data(serial_out),
        .out_valid(serial_out_valid)
    );

    // Instantiate the deconvolution kernel estimator module.
    iir_notch_filter #(
        .CONFIG_SIZE(ADDR_WIDTH),
        .CORDIC_XY_BITS(DATA_WIDTH),
        .CORDIC_PHASE_BITS(DATA_WIDTH),
        .ADC_BITS(ADC_BITS),
        .FIXED_Q(FRAC_BITS),
        .FILTER_ORDER(FILTER_ORDER),
        .LATENCY(LATENCY)
    ) iir_notch_filter_inst (
        .clk(clk),
        .rst_n(rst_n),
        .config_nfft(config_nfft),
        .a_coeffs(a_coeffs),
        .b_coeffs(b_coeffs),
        .eval_iir_freq_resp(eval_iir_freq_resp),
        .phase_mem_data(phase_mem_data),
        .phase_mem_indices(phase_mem_indices),
        .tf_val_magnitude(tf_val_magnitude),
        .tf_val_phase(tf_val_phase),
        .tf_val_valid(tf_val_valid),
        .freq_eval_done(freq_eval_done)
    );

    // Instantiate the phase SRAM interface module.
    phase_vec_sram_interface #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .DEPTH(DEPTH)
    ) phase_vec_sram_interface_inst (
        .clk(clk),
        .rst_n(rst_n),
        .debug(debug_en & phase_vec_sram_en & ~adc_bypass_en),
        .debug_read_trig(serializer_rdy),
        .load(load_en & phase_vec_sram_en & ~adc_bypass_en),
        .wdata_valid(wdata_valid & phase_vec_sram_en & ~adc_bypass_en),
        .wdata_in(parallel_in),
        .ren(phase_vec_ren),
        .rwen(phase_vec_rwen),
        .radr(phase_mem_indices[1]),
        .rwadr(phase_mem_indices[0]),
        .rdata(phase_mem_data[1]),
        .rwdata(phase_mem_data[0])
    );

    // Instantiate the transfer function coefficient SRAM interface module.
    tf_coeff_sram_interface #( 
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .DEPTH(DEPTH)
    ) tf_coeff_sram_interface_inst (
        .clk(clk),
        .rst_n(rst_n),
        .debug(debug_en & tf_coeff_sram_en & ~adc_bypass_en),
        .debug_read_trig(serializer_rdy),
        .load(load_en & tf_coeff_sram_en & ~adc_bypass_en),
        .wdata_valid(wdata_valid & tf_coeff_sram_en & ~adc_bypass_en),
        .wdata_in(parallel_in),
        .ren(tf_coeff_ren),
        .rwen(tf_coeff_rwen),
        .radr(tf_coeff_radr),
        .rwadr(tf_coeff_rwadr),
        .rdata(tf_coeff_rdata),
        .rwdata(tf_coeff_rwdata)
    );

    // Instantiate the deconvolution kernel frequency response magnitude SRAM interface module.
    deconv_kernel_magnitude_sram_interface #( 
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .DEPTH(DEPTH)
    ) deconv_kernel_magnitude_sram_interface_inst (
        .clk(clk),
        .rst_n(rst_n),
        .debug(debug_en & kernel_magnitude_sram_en & ~adc_bypass_en),
        .debug_read_trig(serializer_rdy),
        .wen(tf_val_valid),
        .wdata_in(tf_val_magnitude),
        .rdata(kernel_magnitude_rdata)
    );

    // Instantiate the deconvolution kernel frequency response phase SRAM interface module.
    deconv_kernel_phase_sram_interface #( 
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .DEPTH(DEPTH)
    ) deconv_kernel_phase_sram_interface_inst (
        .clk(clk),
        .rst_n(rst_n),
        .debug(debug_en & kernel_phase_sram_en & ~adc_bypass_en),
        .debug_read_trig(serializer_rdy),
        .wen(tf_val_valid),
        .wdata_in(tf_val_phase),
        .rdata(kernel_phase_rdata)
    );

    // Core logic state machine.
    always @(posedge clk) begin
        if (~rst_n) begin
            state_r <= `IDLE;
        end
        else begin
            case (state_r)
                `IDLE : begin
                    eval_iir_freq_resp <= 0;
                    phase_vec_ren <= 0;
                    phase_vec_rwen <= 0;
                    tf_coeff_ren <= 0;
                    tf_coeff_rwen <= 0;
                    tf_coeff_radr <= {ADDR_WIDTH{1'b0}};
                    state_r <= eval_deconv_kernel ? `COMPUTE_IIR_COEFFS_A0 : `IDLE;
                end

                `COMPUTE_IIR_COEFFS_A0 : begin
                    tf_coeff_radr <= {coeff_table_base_addr, 2'b00};
                    tf_coeff_ren <= 1;
                    tf_coeff_rwen <= 0;
                    eval_iir_freq_resp <= 0;
                    phase_vec_ren <= 0;
                    phase_vec_rwen <= 0;
                    state_r <= `COMPUTE_IIR_COEFFS_A1_B1;
                end

                `COMPUTE_IIR_COEFFS_A1_B1 : begin
                    tf_coeff_radr <= {coeff_table_base_addr, 2'b01};
                    tf_coeff_ren <= 1;
                    tf_coeff_rwen <= 0;
                    eval_iir_freq_resp <= 0;
                    phase_vec_ren <= 0;
                    phase_vec_rwen <= 0;
                    state_r <= `COMPUTE_IIR_COEFFS_A2;
                end

                `COMPUTE_IIR_COEFFS_A2 : begin
                    a_coeffs[0] <= tf_coeff_rdata;
                    tf_coeff_radr <= {coeff_table_base_addr, 2'b10};
                    tf_coeff_ren <= 1;
                    tf_coeff_rwen <= 0;
                    eval_iir_freq_resp <= 0;
                    phase_vec_ren <= 0;
                    phase_vec_rwen <= 0;
                    state_r <= `COMPUTE_IIR_COEFFS_B0_B2;
                end

                `COMPUTE_IIR_COEFFS_B0_B2 : begin
                    a_coeffs[1] <= tf_coeff_rdata;
                    b_coeffs[1] <= tf_coeff_rdata;
                    tf_coeff_radr <= {coeff_table_base_addr, 2'b11};
                    tf_coeff_ren <= 1;
                    tf_coeff_rwen <= 0;
                    eval_iir_freq_resp <= 0;
                    phase_vec_ren <= 0;
                    phase_vec_rwen <= 0;
                    state_r <= `COMPUTE_IIR_COEFFS_WAIT_1;
                end

                `COMPUTE_IIR_COEFFS_WAIT_1 : begin
                    a_coeffs[2] <= tf_coeff_rdata;
                    tf_coeff_radr <= {coeff_table_base_addr, 2'b11};
                    tf_coeff_ren <= 1;
                    tf_coeff_rwen <= 0;
                    eval_iir_freq_resp <= 0;
                    phase_vec_ren <= 0;
                    phase_vec_rwen <= 0;
                    state_r <= `COMPUTE_IIR_COEFFS_WAIT_2;
                end

                `COMPUTE_IIR_COEFFS_WAIT_2 : begin
                    b_coeffs[0] <= tf_coeff_rdata;
                    b_coeffs[2] <= tf_coeff_rdata;
                    tf_coeff_radr <= {coeff_table_base_addr, 2'b11};
                    tf_coeff_ren <= 1;
                    tf_coeff_rwen <= 0;
                    eval_iir_freq_resp <= 0;
                    phase_vec_ren <= 0;
                    phase_vec_rwen <= 0;
                    state_r <= `RUN_KERNEL_EVAL;
                end

                `RUN_KERNEL_EVAL : begin
                    tf_coeff_radr <= {ADDR_WIDTH{1'b0}};
                    tf_coeff_ren <= 0;
                    tf_coeff_rwen <= 0;
                    eval_iir_freq_resp <= ~freq_eval_done;
                    phase_vec_ren <= 1;
                    phase_vec_rwen <= 1;
                    state_r <= freq_eval_done ? `IDLE : `RUN_KERNEL_EVAL;
                end
            endcase
        end
    end
endmodule