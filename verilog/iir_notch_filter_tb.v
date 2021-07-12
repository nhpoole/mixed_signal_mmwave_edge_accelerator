/* IIR Notch Filter Testbench. */

`define BITS 16
`define FRAC_BITS 13
`define ADC_BITS 8
`define NUM_TESTS 1
`define LATENCY 5
`define FREQ_VEC_LENGTH 1275
`define FILTER_ORDER 2

module iir_notch_filter_tb;

    reg clk;
    reg rst_n;
    wire [`BITS-1:0] config_nfft;
    wire [`BITS-1:0] quantized_phase_max;
    wire unsigned [`BITS-1:0] phase_resolution;
    wire unsigned [`ADC_BITS-1:0] sig_freq;
    wire unsigned [`BITS-1:0] sample_rate;
    reg unsigned [`BITS-1:0] phase_mem[`FREQ_VEC_LENGTH-1:0];
    wire signed [`BITS-1:0] a_coeffs[`FILTER_ORDER:0];
    wire signed [`BITS-1:0] b_coeffs[`FILTER_ORDER:0];
    reg eval_iir_freq_resp;
    reg signed [`BITS-1:0] num_eval_real;
    reg signed [`BITS-1:0] num_eval_imag;
    reg signed [`BITS-1:0] den_eval_real;
    reg signed [`BITS-1:0] den_eval_imag;
    reg unsigned [`BITS-1:0] num_magnitude;
    reg unsigned [`BITS-1:0] num_phase;
    reg unsigned [`BITS-1:0] den_magnitude;
    reg unsigned [`BITS-1:0] den_phase;
    reg unsigned [`BITS-1:0] tf_val_magnitude;
    reg unsigned [`BITS-1:0] tf_val_phase;
    reg tf_val_valid;

    integer num_real_data_file;
    integer num_imag_data_file;
    integer den_real_data_file;
    integer den_imag_data_file;
    integer num_magnitude_data_file;
    integer num_phase_data_file;
    integer den_magnitude_data_file;
    integer den_phase_data_file;
    integer spectrum_magnitude_data_file;
    integer spectrum_phase_data_file;

    assign config_nfft = `FREQ_VEC_LENGTH;
    assign quantized_phase_max = `BITS'hfe67;
    assign phase_resolution = `BITS'h0033;
    assign sig_freq = `ADC_BITS'h32;
    assign sample_rate = `BITS'h0315;
    assign a_coeffs[0] = `BITS'h2000;   /* a0 = 1 */
    assign a_coeffs[1] = `BITS'hcee9;   /* a1 -1.5340 */
    assign a_coeffs[2] = `BITS'h1541;   /* a2 = 0.6642 */
    assign b_coeffs[0] = `BITS'h1aa1;   /* b0 = 0.8321 */
    assign b_coeffs[1] = `BITS'hcee9;   /* b1 = -1.5340 */
    assign b_coeffs[2] = `BITS'h1aa1;   /* b2 = 0.8321 */

    always #10 clk = ~clk;

    /* Instantiate the IIR notch filter module. */
    iir_notch_filter #(
        .CONFIG_SIZE(`BITS),
        .CORDIC_XY_BITS(`BITS),
        .CORDIC_PHASE_BITS(`BITS),
        .ADC_BITS(`ADC_BITS),
        .FIXED_Q(`FRAC_BITS),
        .FILTER_ORDER(`FILTER_ORDER),
        .LATENCY(`LATENCY)
    ) iir_notch_filter_inst (
        .clk(clk),
        .rst_n(rst_n),
        .config_nfft(config_nfft),
        .quantized_phase_max(quantized_phase_max),
        .phase_resolution(phase_resolution),
        .sig_freq(sig_freq),
        .sample_rate(sample_rate),
        .phase_mem(phase_mem),
        .a_coeffs(a_coeffs),
        .b_coeffs(b_coeffs),
        .eval_iir_freq_resp(eval_iir_freq_resp),
        .num_eval_real(num_eval_real),
        .num_eval_imag(num_eval_imag),
        .den_eval_real(den_eval_real),
        .den_eval_imag(den_eval_imag),
        .num_magnitude(num_magnitude),
        .num_phase(num_phase),
        .den_magnitude(den_magnitude),
        .den_phase(den_phase),
        .tf_val_magnitude(tf_val_magnitude),
        .tf_val_phase(tf_val_phase),
        .tf_val_valid(tf_val_valid)
    );

    initial begin
        $readmemh("./freq_vec_data.txt", phase_mem);

        clk <= 0;
        rst_n <= 1;
        eval_iir_freq_resp <= 0;

        $display("\n-----------------------IIR Notch Filter Tests--------------------------\n");

        num_real_data_file = $fopen("num_real_data.txt", "w");
        num_imag_data_file = $fopen("num_imag_data.txt", "w");
        den_real_data_file = $fopen("den_real_data.txt", "w");
        den_imag_data_file = $fopen("den_imag_data.txt", "w");
        num_magnitude_data_file = $fopen("num_magnitude_data.txt", "w");
        num_phase_data_file = $fopen("num_phase_data.txt", "w");
        den_magnitude_data_file = $fopen("den_magnitude_data.txt", "w");
        den_phase_data_file = $fopen("den_phase_data.txt", "w");
        spectrum_magnitude_data_file = $fopen("spectrum_magnitude_data.txt", "w");
        spectrum_phase_data_file = $fopen("spectrum_phase_data.txt", "w");

        for (integer i = 0; i < `NUM_TESTS; i = i + 1) begin
            /* Trigger a reset pulse. */
            #20 rst_n <= 0;
            #20 rst_n <= 1;
            
            /* Start the estimation of the IIR notch filter frequency response across the intended frequency range. */
            #40 eval_iir_freq_resp <= 1;
            #20 eval_iir_freq_resp <= 0;

            if (i == 0) begin
                for (integer j = 0; j < (`FREQ_VEC_LENGTH + `LATENCY); j = j + 1) begin
                    /* Wait for the frequency response evaluation to finish and check result. */
                    wait (tf_val_valid);
                    if (j >= 2 && j < (`FREQ_VEC_LENGTH + 2)) begin
                        #40;
                        $fdisplay(num_real_data_file, "%h", num_eval_real);
                        $fdisplay(num_imag_data_file, "%h", num_eval_imag);
                        $fdisplay(den_real_data_file, "%h", den_eval_real);
                        $fdisplay(den_imag_data_file, "%h", den_eval_imag);                        
                    end
                    if (j >= 3 && j < (`FREQ_VEC_LENGTH + 3)) begin
                        #40;
                        $fdisplay(num_magnitude_data_file, "%h", num_magnitude);
                        $fdisplay(num_phase_data_file, "%h", num_phase);
                        $fdisplay(den_magnitude_data_file, "%h", den_magnitude);
                        $fdisplay(den_phase_data_file, "%h", den_phase);                        
                    end
                    if (j >= `LATENCY) begin
                        #40 $display("count = %d", j-`LATENCY);
                        $fdisplay(spectrum_magnitude_data_file, "%h", tf_val_magnitude);
                        $fdisplay(spectrum_phase_data_file, "%h", tf_val_phase);
                    end
                end
            end
        end
        $fclose(num_real_data_file);
        $fclose(num_imag_data_file);
        $fclose(den_real_data_file);
        $fclose(den_imag_data_file);
        $fclose(num_magnitude_data_file);
        $fclose(num_phase_data_file);
        $fclose(den_magnitude_data_file);
        $fclose(den_phase_data_file);
        $fclose(spectrum_magnitude_data_file);
        $fclose(spectrum_phase_data_file);
    end

    initial begin
        $vcdplusfile("dump_iir_debug.vcd");
        $vcdplusmemon();
        $vcdpluson(0, iir_notch_filter_tb);
        #2000000;
        $finish(2);
    end
endmodule