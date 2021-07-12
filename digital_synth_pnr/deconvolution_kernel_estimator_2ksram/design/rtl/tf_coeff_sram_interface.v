/* IIR transfer function coefficient table SRAM interface module. Loading of the SRAM
 * is accomplished via the write port. For debugging, data is read out sequentially
 * via the R/O read port, with the R/W read port disabled. Normal read operation
 * by the kernel estimator module depends upon the input ren and rwen signals.
 */

module tf_coeff_sram_interface
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
    input load,
    input wdata_valid,
    input [DATA_WIDTH-1:0] wdata_in,
    input ren,
    input rwen,
    input [ADDR_WIDTH-1:0] radr,
    input [ADDR_WIDTH-1:0] rwadr,
    output [DATA_WIDTH-1:0] rdata,
    output [DATA_WIDTH-1:0] rwdata
);

    reg [ADDR_WIDTH-1:0] radr_r;
    reg [ADDR_WIDTH-1:0] rwadr_r;
    wire ren_mux;
    wire rwen_mux;
    wire [ADDR_WIDTH-1:0] radr_mux;
    wire [ADDR_WIDTH-1:0] rwadr_mux;

    assign ren_mux = debug ? 1 : ren;
    assign rwen_mux = debug ? 0 : rwen;
    assign radr_mux = debug ? radr_r : radr;
    assign rwadr_mux = wdata_valid ? rwadr_r : rwadr;

    always @(posedge clk) begin
        if (rst_n) begin
            if (load) begin                         /* Loading the SRAM. */
                if (wdata_valid) begin
                    rwadr_r <= rwadr_r + 1;
                end
            end
            else begin
                rwadr_r <= {ADDR_WIDTH{1'b0}};                
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
            rwadr_r <= {ADDR_WIDTH{1'b0}};
        end
    end

    /* Instantiate the IIR transfer function coefficient table SRAM module. */
    ram_sync_1rw1r #( 
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .DEPTH(DEPTH)
    ) ram_sync_1rw1r_inst (
        .clk(clk),
        .wen(wdata_valid),
        .rwen(rwen_mux),
        .rwadr(rwadr_mux),
        .wdata(wdata_in),
        .ren(ren_mux),
        .radr(radr_mux),
        .rwdata(rwdata),
        .rdata(rdata)
    );

endmodule
