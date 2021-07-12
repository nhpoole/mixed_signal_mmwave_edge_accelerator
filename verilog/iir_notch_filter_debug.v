/* IIR Notch Filter Unit (used for debugging). */

`define STATE_WIDTH 3
`define IDLE 0
`define START_FILT_EVAL 1
`define RUN_FILT_EVAL 2
`define DONE_FREQ_BIN 3
`define DONE_FREQ_VEC 4

module iir_notch_filter_debug #(
    parameter CONFIG_SIZE = 16,
    parameter CORDIC_XY_BITS = 16,
    parameter CORDIC_PHASE_BITS = 16,
    parameter ADC_BITS = 8,
    parameter FIXED_Q = 12,
    parameter FILTER_ORDER = 2,
    parameter FREQ_VEC_LENGTH = 1275,
    parameter LATENCY = 4,
    parameter CORDIC_GAIN_INVERSE_SP2R = 32'hdbd95b16,
    parameter CORDIC_GAIN_INVERSE_SR2P = 32'h9b74edae
) (
    input clk,
    input rst_n,
    input [CONFIG_SIZE-1:0] config_nfft,
    input wire unsigned [CORDIC_PHASE_BITS-1:0] quantized_phase_max,
    input wire unsigned [CONFIG_SIZE-1:0] phase_resolution,
    input wire unsigned [ADC_BITS-1:0] sig_freq,
    input wire unsigned [CONFIG_SIZE-1:0] sample_rate,
    input wire unsigned [CORDIC_PHASE_BITS-1:0] phase_mem[FREQ_VEC_LENGTH-1:0],
    input wire signed [CORDIC_XY_BITS-1:0] a_coeffs[FILTER_ORDER:0],
    input wire signed [CORDIC_XY_BITS-1:0] b_coeffs[FILTER_ORDER:0],
    input eval_iir_freq_resp,
    output reg signed [CORDIC_XY_BITS-1:0] num_eval_real,
    output reg signed [CORDIC_XY_BITS-1:0] num_eval_imag,
    output reg signed [CORDIC_XY_BITS-1:0] den_eval_real,
    output reg signed [CORDIC_XY_BITS-1:0] den_eval_imag,
    output reg unsigned [CORDIC_XY_BITS-1:0] num_magnitude,
    output reg unsigned [CORDIC_PHASE_BITS-1:0] num_phase,
    output reg unsigned [CORDIC_XY_BITS-1:0] den_magnitude,
    output reg unsigned [CORDIC_PHASE_BITS-1:0] den_phase,
    output reg unsigned [CORDIC_XY_BITS-1:0] tf_val_magnitude,
    output reg unsigned [CORDIC_XY_BITS-1:0] tf_val_phase,
    output reg tf_val_valid
);

    reg unsigned [CORDIC_PHASE_BITS-1:0] complex_phases[FILTER_ORDER-1:0];

    reg signed [CORDIC_XY_BITS-1:0] a_real[FILTER_ORDER-1:0];
    reg signed [CORDIC_XY_BITS-1:0] a_imag[FILTER_ORDER-1:0];
    reg [FILTER_ORDER-1:0] a_cordic_busy;
    reg [FILTER_ORDER-1:0] a_cordic_done;

    reg signed [CORDIC_XY_BITS-1:0] b_real[FILTER_ORDER-1:0];
    reg signed [CORDIC_XY_BITS-1:0] b_imag[FILTER_ORDER-1:0];
    reg [FILTER_ORDER-1:0] b_cordic_busy;
    reg [FILTER_ORDER-1:0] b_cordic_done;

    reg unsigned [CORDIC_XY_BITS-1:0] den_magnitude_out;
    reg unsigned [CORDIC_PHASE_BITS-1:0] den_phase_out;
    reg den_cordic_busy;
    reg den_cordic_done;

    reg unsigned [CORDIC_XY_BITS-1:0] num_magnitude_out;
    reg unsigned [CORDIC_PHASE_BITS-1:0] num_phase_out;
    reg num_cordic_busy;
    reg num_cordic_done;

    reg fixed_div_done;
    reg fixed_div_overflow;
    reg unsigned [CORDIC_XY_BITS-1:0] tf_quotient;

    reg [`STATE_WIDTH-1:0] state_r;
    reg [CONFIG_SIZE-1:0] freq_k_step;
    reg [CONFIG_SIZE-1:0] eval_cntr;
    reg run_filt_trig;
    reg reset_filt;
    reg freq_eval_done;

    wire cordic_aux_in;
    assign cordic_aux_in = 0;

    //wire unsigned [CONFIG_SIZE-1:0] notch_w0;
    wire signed [CORDIC_XY_BITS+32-1:0] a_coeffs_gain_adjusted[FILTER_ORDER-1:0];
    wire signed [CORDIC_XY_BITS+32-1:0] b_coeffs_gain_adjusted[FILTER_ORDER-1:0];
    wire unsigned [CORDIC_XY_BITS+32-1:0] num_magnitude_gain_adjusted;
    wire unsigned [CORDIC_XY_BITS+32-1:0] den_magnitude_gain_adjusted;

    generate
        for (genvar i = 0; i < FILTER_ORDER; i = i + 1) begin
            assign a_coeffs_gain_adjusted[i] = {{32{a_coeffs[i+1][CORDIC_XY_BITS-1]}}, a_coeffs[i+1]} *
                {{CORDIC_XY_BITS{1'b0}}, CORDIC_GAIN_INVERSE_SP2R} >>> 32;
            assign b_coeffs_gain_adjusted[i] = {{32{b_coeffs[i+1][CORDIC_XY_BITS-1]}}, b_coeffs[i+1]} *
                {{CORDIC_XY_BITS{1'b0}}, CORDIC_GAIN_INVERSE_SP2R} >>> 32;
        end
    endgenerate

    /*assign num_magnitude_gain_adjusted = {{32{num_magnitude_out[CORDIC_XY_BITS-1]}}, num_magnitude_out} *
                {{CORDIC_XY_BITS{1'b0}}, CORDIC_GAIN_INVERSE_SR2P} >>> 32;
    assign den_magnitude_gain_adjusted = {{32{den_magnitude_out[CORDIC_XY_BITS-1]}}, den_magnitude_out} *
                {{CORDIC_XY_BITS{1'b0}}, CORDIC_GAIN_INVERSE_SR2P} >>> 32;*/
    assign num_magnitude_gain_adjusted = {{32{1'b0}}, num_magnitude_out} *
                {{CORDIC_XY_BITS{1'b0}}, CORDIC_GAIN_INVERSE_SR2P} >>> 32;
    assign den_magnitude_gain_adjusted = {{32{1'b0}}, den_magnitude_out} *
                {{CORDIC_XY_BITS{1'b0}}, CORDIC_GAIN_INVERSE_SR2P} >>> 32;

    generate
        for (genvar i = 0; i < FILTER_ORDER; i = i + 1) begin
            /* Instantiate a CORDIC rotator for the transfer function denominator term (a). */
            cordic_polar_to_rect #(
                /* Parameters pre-generated. */
            ) cordic_polar_to_rect_inst_a (
                .i_clk(clk),
                .i_reset(reset_filt),
                .i_stb(run_filt_trig),
                .i_aux(cordic_aux_in),
                .i_xval(a_coeffs_gain_adjusted[i][CORDIC_XY_BITS-1:0]),
                .i_yval({CORDIC_XY_BITS{1'b0}}),
                .i_phase(complex_phases[i]),
                .o_busy(a_cordic_busy[i]),
                .o_done(a_cordic_done[i]),
                .o_xval(a_real[i]),
                .o_yval(a_imag[i]),
                .o_aux()
            );

            /* Instantiate a CORDIC rotator for the transfer function numerator term (b). */
            cordic_polar_to_rect #(
                /* Parameters pre-generated. */
            ) cordic_polar_to_rect_inst_b (
                .i_clk(clk),
                .i_reset(reset_filt),
                .i_stb(run_filt_trig),
                .i_aux(cordic_aux_in),
                .i_xval(b_coeffs_gain_adjusted[i][CORDIC_XY_BITS-1:0]),
                .i_yval({CORDIC_XY_BITS{1'b0}}),
                .i_phase(complex_phases[i]),
                .o_busy(b_cordic_busy[i]),
                .o_done(b_cordic_done[i]),
                .o_xval(b_real[i]),
                .o_yval(b_imag[i]),
                .o_aux()
            );
        end
    endgenerate

    /* Instantiate CORDIC Cartesian-to-polar converters for both the transfer function numerator and denominator. */
    cordic_rect_to_polar #(
        /* Parameters pre-generated. */
    ) cordic_rect_to_polar_inst_num (
        .i_clk(clk),
        .i_reset(reset_filt),
        .i_stb(run_filt_trig),
        .i_aux(cordic_aux_in),
        .i_xval(num_eval_real),
        .i_yval(num_eval_imag),
        .o_busy(num_cordic_busy),
        .o_done(num_cordic_done),
        .o_mag(num_magnitude_out),
        .o_phase(num_phase_out),
        .o_aux()
    );

    cordic_rect_to_polar #(
        /* Parameters pre-generated. */
    ) cordic_rect_to_polar_inst_den (
        .i_clk(clk),
        .i_reset(reset_filt),
        .i_stb(run_filt_trig),
        .i_aux(cordic_aux_in),
        .i_xval(den_eval_real),
        .i_yval(den_eval_imag),
        .o_busy(den_cordic_busy),
        .o_done(den_cordic_done),
        .o_mag(den_magnitude_out),
        .o_phase(den_phase_out),
        .o_aux()
    );

    /* Instantiate a fixed-point divider to compute the final transfer function magnitude for the selected frequency bin. */
    fixed_pt_div #(
        .Q(FIXED_Q),
        .N(CORDIC_XY_BITS)
    ) fixed_pt_div_inst (
        .i_dividend(num_magnitude),
        .i_divisor(den_magnitude),
        .i_start(run_filt_trig),
        .i_clk(clk),
        .o_quotient_out(tf_quotient),
        .o_complete(fixed_div_done),
        .o_overflow(fixed_div_overflow)
    );

    always @(posedge clk) begin
        if (~rst_n) begin
            state_r <= `IDLE;

        end
        else begin
            case (state_r)
                `IDLE : begin
                    reset_filt <= 1;
                    run_filt_trig <= 0;                
                    tf_val_valid <= 0;                
                    freq_eval_done <= 0;
                    complex_phases[0] <= {CORDIC_XY_BITS{1'b1}};
                    complex_phases[1] <= {CORDIC_XY_BITS{1'b1}};
                    den_eval_real <= {CORDIC_XY_BITS{1'b0}};
                    den_eval_imag <= {CORDIC_XY_BITS{1'b0}};
                    num_eval_real <= {CORDIC_XY_BITS{1'b0}};
                    num_eval_imag <= {CORDIC_XY_BITS{1'b0}};
                    freq_k_step <= {CONFIG_SIZE{1'b0}};
                    eval_cntr <= {CONFIG_SIZE{1'b0}};
                    num_magnitude <= {CORDIC_XY_BITS{1'b0}};
                    den_magnitude <= {CORDIC_XY_BITS{1'b1}};
                    num_phase <= {CORDIC_PHASE_BITS{1'b0}};
                    den_phase <= {CORDIC_PHASE_BITS{1'b0}};
                    tf_val_magnitude <= {CORDIC_XY_BITS{1'b0}};
                    tf_val_phase <= {CORDIC_PHASE_BITS{1'b0}};

                    if (eval_iir_freq_resp) begin
                        state_r <= `START_FILT_EVAL;
                    end
                    else begin
                        state_r <= `IDLE;                    
                    end
                end

                `START_FILT_EVAL : begin
                    reset_filt <= 0;
                    run_filt_trig <= 1;                
                    tf_val_valid <= 0;                
                    freq_eval_done <= 0;
                    state_r <= `RUN_FILT_EVAL;
                end

                `RUN_FILT_EVAL : begin
                    reset_filt <= 0;
                    run_filt_trig <= 0;                
                    tf_val_valid <= 0;
                    freq_eval_done <= 0;
                    if ((&a_cordic_done) & (&b_cordic_done) & num_cordic_done & den_cordic_done & fixed_div_done) begin
                        state_r <= `DONE_FREQ_BIN;
                    end
                    else begin
                        state_r <= `RUN_FILT_EVAL;                    
                    end                
                end

                `DONE_FREQ_BIN : begin
                    reset_filt <= 1;
                    run_filt_trig <= 0;                
                    tf_val_valid <= 1;
                    freq_eval_done <= 0;

                    /* Update input values for the three pipeline stages. */
                    den_eval_real <= a_coeffs[0] + a_real[0] + a_real[1];
                    den_eval_imag <= a_imag[0] + a_imag[1];
                    num_eval_real <= b_coeffs[0] + b_real[0] + b_real[1];
                    num_eval_imag <= b_imag[0] + b_imag[1];
                    freq_k_step <= (freq_k_step == config_nfft - 1) ? freq_k_step : (freq_k_step + 1);
                    eval_cntr <= eval_cntr + 1;
                    num_magnitude <= num_magnitude_gain_adjusted[CORDIC_XY_BITS-1:0];
                    den_magnitude <= den_magnitude_gain_adjusted[CORDIC_XY_BITS-1:0];
                    num_phase <= num_phase_out;
                    den_phase <= den_phase_out;
                    tf_val_magnitude <= tf_quotient;
                    tf_val_phase <= num_phase - den_phase;
                    complex_phases[0] <= phase_mem[freq_k_step];
                    complex_phases[1] <= ((freq_k_step << 1) > (config_nfft - 1))
                        ? phase_mem[(freq_k_step << 1) - config_nfft]
                        : phase_mem[freq_k_step << 1];
                    //complex_phases[0] <= complex_phases[0] - phase_resolution;
                    //complex_phases[1] <= (complex_phases[0] - phase_resolution) << 1;
                    if (eval_cntr == (config_nfft + LATENCY - 1)) begin
                        state_r <= `DONE_FREQ_VEC;
                    end
                    else begin
                        state_r <= `START_FILT_EVAL;
                    end
                end

                `DONE_FREQ_VEC : begin
                    reset_filt <= 1;
                    run_filt_trig <= 0;                
                    tf_val_valid <= 1;
                    freq_eval_done <= 1;
                    state_r <= `IDLE;
                end
            endcase
        end
    end
endmodule
