/* Top-Level Deconvolution Kernel Estimator Testbench. */

`define BITS 16
`define FRAC_BITS 13
`define ADC_BITS 8
`define NUM_TESTS 1
`define LATENCY 4
`define FREQ_VEC_LENGTH 1275
`define FILTER_ORDER 2
`define ADDR_WIDTH 12           // Equal to ceil(log2(DEPTH))+1.
`define DEPTH 2048

module deconv_kernel_estimator_top_level_tb;

    reg clk;
    reg rst_n;
    reg load_en;
    reg debug_en;
    reg serial_in;
    reg [1:0] sram_select;
    reg frequency_adc_done;
    reg amplitude_adc_done;
    wire unsigned [`ADC_BITS-1:0] sig_frequency;
    wire unsigned [`ADC_BITS-1:0] sig_amplitude;
    reg adc_bypass_en;
    reg serial_out;
    reg serial_out_valid;
    reg freq_eval_done;

    wire unsigned [`ADC_BITS-1:0] adc_bypass_frequency;
    wire unsigned [`ADC_BITS-1:0] adc_bypass_amplitude;
    wire unsigned [`BITS-1:0] adc_bypass_data;
    wire unsigned [`BITS-1:0] adc_data;

    reg unsigned [`BITS-1:0] phase_mem[`FREQ_VEC_LENGTH-1:0];
    reg unsigned [`BITS-1:0] tf_coeff_mem[(2*`DEPTH)-1:0];
    reg unsigned [`BITS-1:0] tf_val_magnitude;
    reg unsigned [`BITS-1:0] tf_val_phase;

    integer spectrum_magnitude_data_file;
    integer spectrum_phase_data_file;

    reg test_error;

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

    always #10 clk = ~clk;

    // Instantiate the top-level deconvolution kernel estimator module.
    deconv_kernel_estimator_top_level #(
        .DATA_WIDTH(`BITS),
        .ADC_BITS(`ADC_BITS),
        .FRAC_BITS(`FRAC_BITS),
        .FILTER_ORDER(`FILTER_ORDER),
        .LATENCY(`LATENCY),
        .ADDR_WIDTH(`ADDR_WIDTH),
        .DEPTH(`DEPTH)
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

    initial begin
        $readmemh("inputs/freq_vec_data.txt", phase_mem);
        $readmemh("inputs/tf_coeff_data.txt", tf_coeff_mem);

        clk <= 0;
        rst_n <= 1;
        frequency_adc_done <= 0;
        amplitude_adc_done <= 0;
        adc_bypass_en <= 0;
        debug_en <= 0;
        load_en <= 0;
        test_error <= 0;

        $display("\n-----------------------Top-Level Deconvolution Kernel Estimator Tests--------------------------\n");

        // Apply a reset.
        #20 rst_n <= 0;
        #20 rst_n <= 1;

        // First load the phase vector SRAM with data.
        #20;
        load_en <= 1;
        sram_select <= 2'b00;
        for (integer i = 0; i < `FREQ_VEC_LENGTH; i = i + 1) begin
            for (integer j = 0; j < `BITS; j = j + 1) begin
                serial_in <= phase_mem[i][j];
                #20;
            end
        end    
        load_en <= 0;

        // Next load the transfer function coefficient SRAM with data.
        #40;
        load_en <= 1;
        sram_select <= 2'b01;
        for (integer i = 0; i < (2 * `DEPTH); i = i + 1) begin
            for (integer j = 0; j < `BITS; j = j + 1) begin
                serial_in <= tf_coeff_mem[i][j];
                #20;
            end
        end
        load_en <= 0;

        // Load the ADC bypass data.
        #40;
        load_en <= 1;
        adc_bypass_en <= 1;
        for (integer i = 0; i < `BITS; i = i + 1) begin
            serial_in <= adc_bypass_data[i];
            #20;
        end
        load_en <= 0;
        // Deactivate adc_bypass_en one cycle later to ensure the data is latched.
        #20 adc_bypass_en <= 0;

        // Choose whether or not we want to bypass the ADCs.
        #20 adc_bypass_en <= 0;

        // Deconvolution kernel evaluation.
        for (integer k = 0; k < `NUM_TESTS; k = k + 1) begin
            // Trigger a reset pulse.
            #20 rst_n <= 0;
            #20 rst_n <= 1;
            
            // Start the estimation of the IIR notch filter frequency response across the intended frequency range.
            #40;
            frequency_adc_done <= 1;
            amplitude_adc_done <= 1;
            #20;
            frequency_adc_done <= 0;
            amplitude_adc_done <= 0;

            wait(freq_eval_done);

            if (k == 0) begin
                // Now enable the output serializer module and start reading out the input ADC data, followed by
                // the phase and magnitude data written to the output SRAMs.

                load_en <= 0;
                debug_en <= 1;
                sram_select <= 2'b10;
                adc_bypass_en <= 1;

                // Read out the input ADC data.
                wait(serial_out_valid);
                #20;
                for (integer j = 0; j < `BITS; j = j + 1) begin
                    //$display("serial_out = %x, adc_data = %x", serial_out, adc_data[j]);
                    if (serial_out !== adc_data[j]) begin
                        test_error <= 1;
                    end
                    assert(serial_out == adc_data[j]);
                    #20;
                end
                debug_en <= 0;
                adc_bypass_en <= 0;

                // No reset needed: read address is reset when debug_en goes low, but need to wait two extra
                // cycles since debug_en is registered twice in the output serializer.
                //#20; rst_n <= 0;
                //#20; rst_n <= 1;
                #80;
                debug_en <= 1;
                sram_select <= 2'b10;

                // Read out the deconvolution kernel magnitude data.
                wait(serial_out_valid);
                #20;
                for (integer i = 0; i < `FREQ_VEC_LENGTH; i = i + 1) begin
                    for (integer j = 0; j < `BITS; j = j + 1) begin
                        //$display("serial_out = %x", serial_out);
                        tf_val_magnitude[j] <= serial_out;
                        #20;
                    end
                end
                debug_en <= 0;

                // No reset needed: read address is reset when debug_en goes low, but need to wait two extra
                // cycles since debug_en is registered twice in the output serializer.
                //#20; rst_n <= 0;
                //#20; rst_n <= 1;
                #80;
                debug_en <= 1;
                sram_select <= 2'b11;

                // Read out the deconvolution kernel phase data.
                wait(serial_out_valid);
                #20;
                for (integer i = 0; i < `FREQ_VEC_LENGTH; i = i + 1) begin
                    for (integer j = 0; j < `BITS; j = j + 1) begin
                        //$display("serial_out = %x", serial_out);
                        tf_val_phase[j] <= serial_out;
                        #20;
                    end
                end
                debug_en <= 0;

                // Also check that the input phase/frequency vector data and transfer function coefficient data
                // were written correctly.

                // No reset needed: read address is reset when debug_en goes low, but need to wait two extra
                // cycles since debug_en is registered twice in the output serializer.
                //#20; rst_n <= 0;
                //#20; rst_n <= 1;
                #80;
                debug_en <= 1;
                sram_select <= 2'b00;
                
                // Read out the phase/frequency vector data.
                wait(serial_out_valid);
                #20;
                for (integer i = 0; i < `FREQ_VEC_LENGTH; i = i + 1) begin
                    for (integer j = 0; j < `BITS; j = j + 1) begin
                        //$display("serial_out = %x, phase_mem = %x", serial_out, phase_mem[i][j]);
                        if (serial_out !== phase_mem[i][j]) begin
                            test_error <= 1;
                        end
                        assert(serial_out == phase_mem[i][j]);
                        #20;
                    end
                end
                debug_en <= 0;

                // No reset needed: read address is reset when debug_en goes low, but need to wait two extra
                // cycles since debug_en is registered twice in the output serializer.
                //#20; rst_n <= 0;
                //#20; rst_n <= 1;
                #80;
                debug_en <= 1;
                sram_select <= 2'b01;
                
                // Read out the transfer function coefficient data.
                wait(serial_out_valid);
                #20;
                for (integer i = 0; i < (2 * `DEPTH); i = i + 1) begin
                    for (integer j = 0; j < `BITS; j = j + 1) begin
                        //$display("serial_out = %x, tf_coeff_mem = %x", serial_out, tf_coeff_mem[i][j]);
                        if (serial_out !== tf_coeff_mem[i][j]) begin
                            test_error <= 1;
                        end
                        assert(serial_out == tf_coeff_mem[i][j]);
                        #20;
                    end
                end
                debug_en <= 0;
            end
        end

        if (~test_error) begin
            $display("Test status: PASS");
        end
        else begin
            $display("Test status: FAIL");
        end

        $toggle_stop();
        $toggle_report("run.saif", 1e-12, "deconv_kernel_estimator_top_level_tb");
        $finish;
    end

    initial begin
        $set_toggle_region("deconv_kernel_estimator_top_level_tb");
        $toggle_start();
    end

    /*initial begin
        $vcdplusfile("dump_deconv_kernel_estimator_top_level.vcd");
        $vcdplusmemon();
        $vcdpluson(0, deconv_kernel_estimator_top_level_tb);
        #4000000;
        $finish(2);
    end*/
endmodule