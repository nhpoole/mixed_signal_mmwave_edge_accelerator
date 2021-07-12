/* Output deconvolution kernel frequency response magnitude SRAM interface module.
 * Writing to the SRAM is accomplished via the write port. For debugging, data is
 * read out sequentially via the R/O read port, with the R/W read port disabled.
 */

module deconv_kernel_magnitude_sram_interface
#(
    parameter DATA_WIDTH = 16,
    parameter ADDR_WIDTH = 12,                      /* Equal to ceil(log2(DEPTH))+1. */
    parameter DEPTH = 2048
)
(
    input clk,
    input rst_n,
    input debug,
    input debug_read_trig,
    input wen,
    input [DATA_WIDTH-1:0] wdata_in,
    output [DATA_WIDTH-1:0] rdata
);

    reg [ADDR_WIDTH-1:0] radr_r;
    reg [ADDR_WIDTH-1:0] wadr_r;

    always @(posedge clk) begin
        if (rst_n) begin
            if (wen) begin                          /* Writing the SRAM. */
                wadr_r <= wadr_r + 1;
            end
            
            if (debug) begin                        /* Reading the SRAM. */
                if (debug_read_trig) begin
                    radr_r <= radr_r + 1;
                end
            end
            else begin
                radr_r <= {ADDR_WIDTH{1'b0}};                
            end
        end
        else begin
            radr_r <= {ADDR_WIDTH{1'b0}};
            wadr_r <= {ADDR_WIDTH{1'b0}};
        end
    end

    /* Instantiate the deconvolution kernel magnitude frequency response SRAM module. */
    ram_sync_1rw1r #( 
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .DEPTH(DEPTH)
    ) ram_sync_1rw1r_inst (
        .clk(clk),
        .wen(wen),
        .rwen(1'b0),
        .rwadr(wadr_r),
        .wdata(wdata_in),
        .ren(debug),
        .radr(radr_r),
        .rwdata(),
        .rdata(rdata)
    );

endmodule
