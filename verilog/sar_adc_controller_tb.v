/* 8-Bit SAR ADC Testbench. */

`define BITS 8
`define NUM_TESTS 50

module sar_adc_controller_tb;

    reg clk;
    reg rst_n;
    reg adc_start;
    reg comparator_val;
    reg run_adc_n;
    reg [`BITS-1:0] adc_val;
    reg out_valid;
    reg [`BITS-1:0] sample_val;
    reg test_error;

    always #10 clk = ~clk;

    always @(negedge clk) begin
        /* $display("time = %d, out_valid = %b, sample_val = 0b%b, adc_val = 0b%b", $time, out_valid, sample_val, adc_val); */
        comparator_val <= (adc_val <= sample_val);
    end

    always @(posedge run_adc_n) begin
        sample_val <= $random;
    end

    /* Instantiate the SAR ADC controller module. */
    sar_adc_controller #(
        .BITS(`BITS)
    ) sar_adc_controller_inst (
        .clk(clk),
        .rst_n(rst_n),
        .adc_start(adc_start),
        .comparator_val(comparator_val),
        .run_adc_n(run_adc_n),
        .adc_val(adc_val),
        .out_valid(out_valid)
    );

    initial begin
        clk <= 0;
        rst_n <= 1;
        comparator_val <= 0;
        adc_start <= 0;
        test_error <= 0;

        $display("\n-----------------------SAR ADC Controller Tests--------------------------\n");

        for (integer i = 0; i < `NUM_TESTS; i = i + 1) begin
            /* Trigger a reset pulse. */
            #20 rst_n <= 0;
            #20 rst_n <= 1;
            
            /* Start an ADC conversion with a single pulse. */
            #40 adc_start <= 1;
            #20 adc_start <= 0;

            /* Wait for the conversion to finish and check result. */
            #200;
            $display("out_valid = %b, sample_val = 0b%b, adc_val = 0b%b", out_valid, sample_val, adc_val);
            if ((out_valid !== 1'b1) || (adc_val !== sample_val)) begin
                test_error <= 1;
            end
            assert(out_valid === 1'b1);
            assert(adc_val === sample_val);
            #60;
        end
    end

    initial begin
        $vcdplusfile("dump_adc.vcd");
        $vcdplusmemon();
        $vcdpluson(0, sar_adc_controller_tb);
        #20000;
        if (~test_error) begin
            $display("Test status: PASS");
        end
        else begin
            $display("Test status: FAIL");
        end
        $finish(2);
    end
endmodule