/* Directed test for the Skywater 130nm SRAM modules (either 4KB or 8KB). */

`define BANK_ADDR_WIDTH 12      /* Equal to ceil(log2(BANK_DEPTH))+1. */
`define DATA_WIDTH 16
`define BANK_DEPTH 2048

module ram_sync_1rw1r_tb;

    reg clk;
    reg ren;
    reg [`BANK_ADDR_WIDTH-1:0] radr;
    reg [`DATA_WIDTH-1:0] rdata;
    reg wen;
    reg rwen;
    reg [`BANK_ADDR_WIDTH-1:0] rwadr;
    reg [`DATA_WIDTH-1:0] wdata;
    reg [`DATA_WIDTH-1:0] rwdata;

    reg [`DATA_WIDTH-1:0] tile0_data[(2*`BANK_DEPTH-1):0];
    reg [`DATA_WIDTH-1:0] tile1_data[(2*`BANK_DEPTH-1):0];
    reg [`DATA_WIDTH-1:0] tile2_data[(2*`BANK_DEPTH-1):0];
    reg [`DATA_WIDTH-1:0] tile3_data[(2*`BANK_DEPTH-1):0];
    reg test_error;

    always #10 clk = ~clk;

    /* Instantiate the SRAM module. */
    ram_sync_1rw1r #( 
        .DATA_WIDTH(`DATA_WIDTH),
        .ADDR_WIDTH(`BANK_ADDR_WIDTH),
        .DEPTH(`BANK_DEPTH)
    ) ram_sync_1rw1r_inst (
        .clk(clk),
        .wen(wen),
        .rwen(rwen),
        .rwadr(rwadr),
        .wdata(wdata),
        .ren(ren),
        .radr(radr),
        .rwdata(rwdata),
        .rdata(rdata)
    );

    initial begin
        test_error <= 0;
        clk <= 0;
        ren <= 0;
        radr <= {`BANK_ADDR_WIDTH{1'b0}};
        wen <= 0;
        rwen <= 0;
        rwadr <= {`BANK_ADDR_WIDTH{1'b0}};
        wdata <= {`DATA_WIDTH{1'b0}};

        // Populate the tile data arrays with random 16-bit numbers.
        for (integer i = 0; i < (2 * `BANK_DEPTH); i = i + 1) begin
            tile0_data[i] <= $random;
            tile1_data[i] <= $random;
            tile2_data[i] <= $random;
            tile3_data[i] <= $random;
        end

        $display("\n-----------------------Initial Tests--------------------------\n");

        // First test the read enable and write enable ports. Try writing three values to the
        // SRAM, two with wen active and the third with wen inactive. Attempt
        // to write the third value at the same location as the second value.
        wen <= 1;
        wdata <= `DATA_WIDTH'hABCD;
        rwadr <= `BANK_ADDR_WIDTH'h44;
        #20;
        wdata <= `DATA_WIDTH'h2345;
        rwadr <= `BANK_ADDR_WIDTH'h45;
        #20;
        wen <= 0;
        wdata <= `DATA_WIDTH'hDECA;
        #20;

        // Try reading back the first value without having activated the read-only (R/O) enable.
        // The R/O data should not contain 0xABCD as a result.
        radr <= `BANK_ADDR_WIDTH'h44;
        #30 $display("rdata = %x", rdata); assert(rdata !== `DATA_WIDTH'hABCD);

        // Now activate the read-only (R/O) read enable, and check that we successfully read back
        // the value at the first address, but read back the first value written at the second
        // address rather than the second value written at the second address. This shows that the
        // write enable also works.
        #10; ren <= 1;
        #30 $display("rdata = %x", rdata); assert(rdata == `DATA_WIDTH'hABCD);
        #10; radr <= `BANK_ADDR_WIDTH'h45;
        #30 $display("rdata = %x", rdata); assert(rdata == `DATA_WIDTH'h2345);

        // Try reading back the first value without having activated the read/write (R/W) enable.
        // The R/W data should not contain 0xABCD as a result.
        #10; rwadr <= `BANK_ADDR_WIDTH'h44;
        #30 $display("rwdata = %x", rwdata); assert(rwdata !== `DATA_WIDTH'hABCD);

        // Now activate the read/write (R/W) read enable, and check that we successfully read back
        // the value at the first address, but read back the first value written at the second
        // address rather than the second value written at the second address. This also exercises
        // the simultaneous reads out of both read ports operation.
        #10; rwen <= 1;
        #30 $display("rwdata = %x, rdata = %x", rwdata, rdata);
        assert((rdata == `DATA_WIDTH'h2345) && (rwdata == `DATA_WIDTH'hABCD));
        #10; rwadr <= `BANK_ADDR_WIDTH'h45;
        #30 $display("rwdata = %x, rdata = %x", rwdata, rdata);
        assert((rdata == `DATA_WIDTH'h2345) && (rwdata == `DATA_WIDTH'h2345));

        $display("\n-----------------------Test Set 1--------------------------\n");

        // Next, write tile 0 to the SRAM.
        #10;
        ren <= 0;
        rwen <= 0;
        wen <= 1;
        for (integer i = 0; i < (2 * `BANK_DEPTH); i = i + 1) begin
            wdata <= tile0_data[i];
            rwadr <= i;
            #20;
        end

        // Now read back tile 0 from the SRAM through the R/O port.
        #20;
        ren <= 1;
        rwen <= 0;
        wen <= 0;
        for (integer i = 0; i <= (2 * `BANK_DEPTH); i = i + 1) begin
            if (i < (2 * `BANK_DEPTH)) begin
                radr <= i;
            end
            #10;
            if (i > 0) begin
                // The R/O read data should contain tile0_data[i-1].
                $display("rdata = %x, tile0_data = %x", rdata, tile0_data[i-1]);
                if (rdata !== tile0_data[i-1]) begin
                    test_error <= 1;
                end
                assert(rdata == tile0_data[i-1]);
            end
            #10;
        end
        
        $display("\n-----------------------Test Set 2--------------------------\n");

        // Next, write tile 1 to the SRAM.
        ren <= 0;
        rwen <= 0;
        wen <= 1;
        for (integer i = 0; i < (2 * `BANK_DEPTH); i = i + 1) begin
            wdata <= tile1_data[i];
            rwadr <= i;
            #20;
        end

        // Now read back tile 1 from the SRAM through the R/W port.
        #20;
        ren <= 0;
        rwen <= 1;
        wen <= 0;
        for (integer i = 0; i <= (2 * `BANK_DEPTH); i = i + 1) begin
            if (i < (2 * `BANK_DEPTH)) begin
                rwadr <= i;
            end
            #10;
            if (i > 0) begin
                // The R/W read data should contain tile1_data[i-1].
                $display("rwdata = %x, tile1_data = %x", rwdata, tile1_data[i-1]);
                if (rwdata !== tile1_data[i-1]) begin
                    test_error <= 1;
                end
                assert(rwdata == tile1_data[i-1]);
            end
            #10;
        end
        $display("\n-----------------------Test Set 3--------------------------\n");

        // Next, write tile 2 to the SRAM.
        ren <= 0;
        rwen <= 0;
        wen <= 1;
        for (integer i = 0; i < (2 * `BANK_DEPTH); i = i + 1) begin
            wdata <= tile2_data[i];
            rwadr <= i;
            #20;
        end

        // Now read back tile 2 from the SRAM through both the R/O and R/W read ports.
        #20;
        ren <= 1;
        rwen <= 1;
        wen <= 0;
        for (integer i = 0; i <= (2 * `BANK_DEPTH); i = i + 1) begin
            if (i < (2 * `BANK_DEPTH)) begin
                radr <= i;
                rwadr <= i;
            end
            #10;
            if (i > 0) begin
                // The R/O and R/W read data should both contain tile2_data[i-1].
                $display("rdata = %x, rwdata = %x, tile2_data = %x", rdata, rwdata, tile2_data[i-1]);
                if ((rdata !== tile2_data[i-1]) || (rwdata !== tile2_data[i-1])) begin
                    test_error <= 1;
                end
                assert((rdata == tile2_data[i-1]) && (rwdata == tile2_data[i-1]));
            end
            #10;
        end
    end

    initial begin
        $vcdplusfile("dump_sram.vcd");
        $vcdplusmemon();
        $vcdpluson(0, ram_sync_1rw1r_tb);
        #500000;
        if (~test_error) begin
            $display("Test status: PASS");
        end
        else begin
            $display("Test status: FAIL");
        end
        $finish(2);
    end
endmodule

