/* Chip Digital Section Evaluation Zynq SoC Testbench. */

// General constants/definitions.
`define BITS 16
`define FRAC_BITS 13
`define ADC_BITS 8
`define LATENCY 4
`define FILTER_ORDER 2
`define ADDR_WIDTH 12           // Equal to ceil(log2(DEPTH))+1.
`define DEPTH 2048

module chip_digital_eval_soc_tb;

    // Zynq SoC clock stimulus signal.
    reg clk;

    // Zynq SoC EMIO GPIO interface signals.
    reg [13:0] gpio_emio_out;
    reg [13:0] gpio_emio_in;

    // Internal signals.
    reg freq_eval_done;
    reg serial_out;
    reg serial_out_valid;
    reg rst_n;
    reg load_en;
    reg debug_en;
    reg serial_in;
    reg [1:0] sram_select;
    reg adc_start;
    reg adc_bypass_en;
    reg chip_eval_done;
    reg chip_adc_serial_data;
    reg chip_mag_serial_data;
    reg chip_phase_serial_data;
    reg chip_phase_sram_serial_data;
    reg chip_tf_coeff_sram_serial_data;
    reg chip_adc_serial_data_valid;
    reg chip_mag_serial_data_valid;
    reg chip_phase_serial_data_valid;
    reg chip_phase_sram_serial_data_valid;
    reg chip_tf_coeff_sram_serial_data_valid;
    reg sys_rst_n;
    reg kernel_start;
    reg bypass_adc_eval;

    reg test_error;

    integer chip_adc_data_file;
    integer chip_kernel_mag_data_file;
    integer chip_kernel_phase_data_file;
    integer chip_phase_sram_data_file;
    integer chip_tf_coeff_sram_data_file;
    
    // Instantiate the SoC EMIO GPIO interface module.
    soc_gpio_interface soc_gpio_interface_inst (
        .gpio_emio_out(gpio_emio_out),
        .gpio_emio_in(gpio_emio_in),
        .chip_eval_done(chip_eval_done),
        .chip_adc_serial_data(chip_adc_serial_data),
        .chip_mag_serial_data(chip_mag_serial_data),
        .chip_phase_serial_data(chip_phase_serial_data),
        .chip_phase_sram_serial_data(chip_phase_sram_serial_data),
        .chip_tf_coeff_sram_serial_data(chip_tf_coeff_sram_serial_data),
        .chip_adc_serial_data_valid(chip_adc_serial_data_valid),
        .chip_mag_serial_data_valid(chip_mag_serial_data_valid),
        .chip_phase_serial_data_valid(chip_phase_serial_data_valid),
        .chip_phase_sram_serial_data_valid(chip_phase_sram_serial_data_valid),
        .chip_tf_coeff_sram_serial_data_valid(chip_tf_coeff_sram_serial_data_valid),
        .sys_rst_n(sys_rst_n),
        .kernel_start(kernel_start),
        .bypass_adc_eval(bypass_adc_eval)
    );

    // Instantiate the chip digital section evaluation testbench module.
    chip_digital_eval_tb chip_digital_eval_tb_inst (
        .clk(clk),
        .sys_rst_n(sys_rst_n),
        .kernel_start(kernel_start),
        .bypass_adc_eval(bypass_adc_eval),
        .freq_eval_done(freq_eval_done),
        .serial_out(serial_out),
        .serial_out_valid(serial_out_valid),
        .rst_n(rst_n),
        .load_en(load_en),
        .debug_en(debug_en),
        .serial_in(serial_in),
        .sram_select(sram_select),
        .adc_start(adc_start),
        .adc_bypass_en(adc_bypass_en),
        .chip_eval_done(chip_eval_done),
        .chip_adc_serial_data(chip_adc_serial_data),
        .chip_mag_serial_data(chip_mag_serial_data),
        .chip_phase_serial_data(chip_phase_serial_data),
        .chip_phase_sram_serial_data(chip_phase_sram_serial_data),
        .chip_tf_coeff_sram_serial_data(chip_tf_coeff_sram_serial_data),
        .chip_adc_serial_data_valid(chip_adc_serial_data_valid),
        .chip_mag_serial_data_valid(chip_mag_serial_data_valid),
        .chip_phase_serial_data_valid(chip_phase_serial_data_valid),
        .chip_phase_sram_serial_data_valid(chip_phase_sram_serial_data_valid),
        .chip_tf_coeff_sram_serial_data_valid(chip_tf_coeff_sram_serial_data_valid)        
    );

    // Instantiate the top-level deconvolution kernel estimator module.
    deconv_kernel_estimator_top_level_compat #(
        .DATA_WIDTH(`BITS),
        .ADC_BITS(`ADC_BITS),
        .FRAC_BITS(`FRAC_BITS),
        .FILTER_ORDER(`FILTER_ORDER),
        .LATENCY(`LATENCY),
        .ADDR_WIDTH(`ADDR_WIDTH),
        .DEPTH(`DEPTH)
    ) deconv_kernel_estimator_top_level_compat_inst (
        .clk(clk),
        .rst_n(rst_n),
        .load_en(load_en),
        .debug_en(debug_en),
        .serial_in(serial_in),
        .sram_select(sram_select),
        .frequency_adc_done(adc_start),
        .amplitude_adc_done(adc_start),
        .adc_bypass_en(adc_bypass_en),
        .serial_out(serial_out),
        .serial_out_valid(serial_out_valid),
        .freq_eval_done(freq_eval_done)
    );

    always #10 clk = ~clk;
    
    initial begin
        chip_adc_data_file = $fopen("chip_adc_data.txt", "w");
        chip_kernel_mag_data_file = $fopen("chip_kernel_mag_data.txt", "w");
        chip_kernel_phase_data_file = $fopen("chip_kernel_phase_data.txt", "w");
        chip_phase_sram_data_file = $fopen("chip_phase_sram_data.txt", "w");
        chip_tf_coeff_sram_data_file = $fopen("chip_tf_coeff_sram_data.txt", "w");

        clk <= 0;
        gpio_emio_out[11] <= 1;             // sys_rst_n signal.
        gpio_emio_out[13] <= 1;             // bypass_adc_eval signal.
        gpio_emio_out[12] <= 0;             // kernel_start signal.
        test_error <= 0;

        // Apply a system reset.
        #20;
        gpio_emio_out[11] <= 0;             // sys_rst_n signal.
        #20;
        gpio_emio_out[11] <= 1;             // sys_rst_n signal.

        // Start the estimation of the IIR notch filter frequency response across the intended
        // frequency range by triggering the kernel_start signal.
        #20;
        gpio_emio_out[12] <= 1;             // kernel_start signal.
        #20;
        gpio_emio_out[12] <= 0;             // kernel_start signal.

        while (~gpio_emio_in[0]) begin      // chip_eval_done signal.
            // Assign output data according to:
            //     gpio_emio_in[1] = chip_adc_serial_data;
            //     gpio_emio_in[2] = chip_mag_serial_data;
            //     gpio_emio_in[3] = chip_phase_serial_data;
            //     gpio_emio_in[4] = chip_phase_sram_serial_data;
            //     gpio_emio_in[5] = chip_tf_coeff_sram_serial_data;
            //     gpio_emio_in[6] = chip_adc_serial_data_valid;
            //     gpio_emio_in[7] = chip_mag_serial_data_valid;
            //     gpio_emio_in[8] = chip_phase_serial_data_valid;
            //     gpio_emio_in[9] = chip_phase_sram_serial_data_valid;
            //     gpio_emio_in[10] = chip_tf_coeff_sram_serial_data_valid;

            #20;
            $fdisplayb(chip_adc_data_file, {gpio_emio_in[1], gpio_emio_in[6]});
            $fdisplayb(chip_kernel_mag_data_file, {gpio_emio_in[2], gpio_emio_in[7]});
            $fdisplayb(chip_kernel_phase_data_file, {gpio_emio_in[3], gpio_emio_in[8]});
            $fdisplayb(chip_phase_sram_data_file, {gpio_emio_in[4], gpio_emio_in[9]});
            $fdisplayb(chip_tf_coeff_sram_data_file, {gpio_emio_in[5], gpio_emio_in[10]});
        end

        $fclose(chip_adc_data_file);
        $fclose(chip_kernel_mag_data_file);
        $fclose(chip_kernel_phase_data_file);
        $fclose(chip_phase_sram_data_file);
        $fclose(chip_tf_coeff_sram_data_file);
    end

    initial begin
        $vcdplusfile("dump_chip_digital_eval_soc_tb.vcd");
        $vcdplusmemon();
        $vcdpluson(0, chip_digital_eval_soc_tb);
        #10000000;
        if (~test_error) begin
            $display("Test status: PASS");
        end
        else begin
            $display("Test status: FAIL");
        end
        $finish(2);
    end
endmodule