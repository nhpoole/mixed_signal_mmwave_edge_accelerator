/* Directed test for the output SRAM interfaces. */

`define BANK_ADDR_WIDTH 12      /* Equal to ceil(log2(BANK_DEPTH))+1. */
`define DATA_WIDTH 16
`define BANK_DEPTH 2048

module output_sram_interface_tb;

    reg clk;
    reg rst_n;
    reg debug_en;
    reg debug_en_d1;
    reg debug_en_d2;
    reg serial_out;
    reg rdata_valid;
    reg serializer_rdy;
    reg wen;
    reg [`DATA_WIDTH-1:0] rdata;
    reg [`DATA_WIDTH-1:0] wdata;

    reg [`DATA_WIDTH-1:0] tile0_data[(2*`BANK_DEPTH-1):0];
    reg [`DATA_WIDTH-1:0] tile1_data[(2*`BANK_DEPTH-1):0];
    reg [`DATA_WIDTH-1:0] tile2_data[(2*`BANK_DEPTH-1):0];
    reg [`DATA_WIDTH-1:0] tile3_data[(2*`BANK_DEPTH-1):0];
    reg test_error;

    always #10 clk = ~clk;

    /* Register the debug enable signal (delay of two clocks relative to output SRAM access). */
    always @(posedge clk) begin
        debug_en_d1 <= debug_en;
        debug_en_d2 <= debug_en_d1;
    end

    /* Instantiate the output serializer module. */
    serializer #(
        .FETCH_WIDTH(`DATA_WIDTH)
    ) serializer_inst (
        .clk(clk),
        .rst_n(rst_n),
        .en(debug_en_d2),
        .parallel_data(rdata),
        .sender_deq(serializer_rdy),
        .serial_data(serial_out),
        .out_valid(rdata_valid)
    );

    /* Instantiate an output SRAM interface module (deconvolution kernel frequency response
     * phase or magnitude SRAM). */
    deconv_kernel_magnitude_sram_interface #( 
        .DATA_WIDTH(`DATA_WIDTH),
        .ADDR_WIDTH(`BANK_ADDR_WIDTH),
        .DEPTH(`BANK_DEPTH)
    ) deconv_kernel_magnitude_sram_interface_inst (
        .clk(clk),
        .rst_n(rst_n),
        .debug(debug_en),
        .debug_read_trig(serializer_rdy),
        .wen(wen),
        .wdata_in(wdata),
        .rdata(rdata)
    );

    initial begin
        test_error <= 0;
        clk <= 0;
        rst_n <= 1;
        debug_en <= 0;
        wen <= 0;

        // Populate the tile data arrays with random 16-bit numbers.
        for (integer i = 0; i < (2 * `BANK_DEPTH); i = i + 1) begin
            tile0_data[i] <= $random;
            tile1_data[i] <= $random;
            tile2_data[i] <= $random;
            tile3_data[i] <= $random;
        end

        // Apply a reset.
        #20; rst_n <= 0;
        #20; rst_n <= 1;

        $display("\n-----------------------Tests--------------------------\n");

        // Populate the output SRAM with tile 0 data.
        #20; wen <= 1;
        for (integer i = 0; i < (2 * `BANK_DEPTH); i = i + 1) begin
            wdata <= tile0_data[i];
            #20;
        end

        // Now enable the output serializer module and start reading out the data from the output
        // SRAM.
        wen <= 0;
        debug_en <= 1;

        wait(rdata_valid);
        #20;
        for (integer i = 0; i < (2 * `BANK_DEPTH); i = i + 1) begin
            for (integer j = 0; j < `DATA_WIDTH; j = j + 1) begin
                //$display("serial_out = %x, tile0_data[i][j] = %x", serial_out, tile0_data[i][j]);
                if (serial_out !== tile0_data[i][j]) begin
                    test_error <= 1;
                end
                assert(serial_out == tile0_data[i][j]);
                #20;
            end
        end
        debug_en <= 0;

        // Apply a reset to reset the write address.
        #20; rst_n <= 0;
        #20; rst_n <= 1;

        // Check that as we are reading out the data, we can also write new data (at earlier
        // addresses). Write tile 1 so we can differentiate the old and new data.
        @(negedge clk);
        debug_en <= 1;
        wen <= 0;

        wait(rdata_valid);
        #20;
        for (integer i = 0; i < ((2 * `BANK_DEPTH) + 2); i = i + 1) begin
            if (i > 1) begin
                wen <= 1;
                wdata <= tile1_data[i-2];
            end
            if (i < (2 * `BANK_DEPTH)) begin
                for (integer j = 0; j < `DATA_WIDTH; j = j + 1) begin
                    //$display("serial_out = %x, tile0_data[i][j] = %x", serial_out, tile0_data[i][j]);
                    if (serial_out !== tile0_data[i][j]) begin
                        test_error <= 1;
                    end
                    assert(serial_out == tile0_data[i][j]);
                    #20;
                    wen <= 0;
                end
            end
        end
        debug_en <= 0;
        wen <= 0;

        // No reset needed: read address is reset when debug_en goes low, but need to wait two extra
        // cycles since debug_en is registered twice in the output serializer.
        //#20; rst_n <= 0;
        //#20; rst_n <= 1;
        #60;

        // Finally, check that we read back tile 1 from the output SRAM.
        @(negedge clk);
        wen <= 0;
        debug_en <= 1;

        wait(rdata_valid);
        #20;
        for (integer i = 0; i < (2 * `BANK_DEPTH); i = i + 1) begin
            for (integer j = 0; j < `DATA_WIDTH; j = j + 1) begin
                //$display("serial_out = %x, tile1_data[i][j] = %x", serial_out, tile1_data[i][j]);
                if (serial_out !== tile1_data[i][j]) begin
                    test_error <= 1;
                end
                assert(serial_out == tile1_data[i][j]);
                #20;
            end
        end
        debug_en <= 0;
    end

    initial begin
        $vcdplusfile("dump_output_sram_interface.vcd");
        $vcdplusmemon();
        $vcdpluson(0, output_sram_interface_tb);
        #3500000;
        if (~test_error) begin
            $display("Test status: PASS");
        end
        else begin
            $display("Test status: FAIL");
        end
        $finish(2);
    end
endmodule

