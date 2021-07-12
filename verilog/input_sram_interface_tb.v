/* Directed test for the input SRAM interfaces. */

`define BANK_ADDR_WIDTH 12      /* Equal to ceil(log2(BANK_DEPTH))+1. */
`define DATA_WIDTH 16
`define BANK_DEPTH 2048

module input_sram_interface_tb;

    reg clk;
    reg rst_n;
    reg load_en;
    reg debug_en;
    reg debug_en_d1;
    reg debug_en_d2;
    reg serial_in;
    reg serial_out;
    reg serializer_rdy;
    reg [`DATA_WIDTH-1:0] parallel_in;
    reg wdata_valid;
    reg rdata_valid;
    reg ren;
    reg [`BANK_ADDR_WIDTH-1:0] radr;
    reg [`DATA_WIDTH-1:0] rdata;
    reg rwen;
    reg [`BANK_ADDR_WIDTH-1:0] rwadr;
    reg [`DATA_WIDTH-1:0] rwdata;

    reg [`DATA_WIDTH-1:0] tile0_data[(2*`BANK_DEPTH-1):0];
    reg [`DATA_WIDTH-1:0] tile1_data[(2*`BANK_DEPTH-1):0];
    reg [`DATA_WIDTH-1:0] tile2_data[(2*`BANK_DEPTH-1):0];
    reg [`DATA_WIDTH-1:0] tile3_data[(2*`BANK_DEPTH-1):0];
    reg test_error;

    always #10 clk = ~clk;

    /* Instantiate the input deserializer module. */
    deserializer #(
        .FETCH_WIDTH(`DATA_WIDTH)
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

    /* Instantiate an input SRAM interface module (phase vector or transfer function coefficient SRAM). */
    phase_vec_sram_interface #( 
        .DATA_WIDTH(`DATA_WIDTH),
        .ADDR_WIDTH(`BANK_ADDR_WIDTH),
        .DEPTH(`BANK_DEPTH)
    ) phase_vec_sram_interface_inst (
        .clk(clk),
        .rst_n(rst_n),
        .debug(debug_en),
        .debug_read_trig(serializer_rdy),
        .load(load_en),
        .wdata_valid(wdata_valid),
        .wdata_in(parallel_in),
        .ren(ren),
        .rwen(rwen),
        .radr(radr),
        .rwadr(rwadr),
        .rdata(rdata),
        .rwdata(rwdata)
    );

    initial begin
        test_error <= 0;
        clk <= 0;
        rst_n <= 1;
        load_en <= 0;
        debug_en <= 0;
        serial_in <= 0;
        ren <= 0;
        radr <= {`BANK_ADDR_WIDTH{1'b0}};
        rwen <= 0;
        rwadr <= {`BANK_ADDR_WIDTH{1'b0}};

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

        // Enable the input deserializer module and start loading data.
        #20; load_en <= 1;
        for (integer i = 0; i < (2 * `BANK_DEPTH); i = i + 1) begin
            for (integer j = 0; j < `DATA_WIDTH; j = j + 1) begin
                serial_in <= tile0_data[i][j];
                #20;
            end
        end

        // Now enable the output serializer module and start reading back the data we just wrote
        // to the SRAM. Check that the correct contents was written to begin with.
        load_en <= 0;
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

        // Check that basic reads out of both ports simultaneously work for the IIR deconvolution
        // kernel estimator, which performs two reads at once. Read out the SRAM data in reverse,
        // with the R/W port receiving data at an address opposite the address for the R/O port.
        @(negedge clk);
        load_en <= 0;
        debug_en <= 0;
        ren <= 1;
        rwen <= 1;
        
        for (integer i = 0; i < (2 * `BANK_DEPTH); i = i + 1) begin
            if (i < (2 * `BANK_DEPTH)) begin
                radr <= i;
                rwadr <= (2 * `BANK_DEPTH) - 1 - i;
            end
            #10;
            if (i > 0) begin
                // The R/O read data should contain tile0_data[i-1] and the R/W read data should
                // contain tile0_data[(2*`BANK_DEPTH)-i].
                // $display("rdata = %x, rwdata = %x", rdata, rwdata,
                //     "tile0_data_A = %x, tile0_data_B = %x", tile0_data[i-1], tile0_data[(2*`BANK_DEPTH)-i]);
                if ((rdata !== tile0_data[i-1]) || (rwdata !== tile0_data[(2*`BANK_DEPTH)-i])) begin
                    test_error <= 1;
                end
                assert((rdata == tile0_data[i-1]) && (rwdata == tile0_data[(2*`BANK_DEPTH)-i]));
            end
            #10;
        end
    end

    initial begin
        $vcdplusfile("dump_input_sram_interface.vcd");
        $vcdplusmemon();
        $vcdpluson(0, input_sram_interface_tb);
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

