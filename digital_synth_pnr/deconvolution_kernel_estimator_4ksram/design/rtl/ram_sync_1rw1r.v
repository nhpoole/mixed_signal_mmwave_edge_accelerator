/* This SRAM wrapper is intended to be compatible with the Skywater 130nm
 * 4KB and 8KB SRAM macros only. Furthermore, it assumes a data width of
 * exactly 16 bits, thereby requiring masking for read and write operations
 * (since the SRAM macros are 32 bits wide). As a result, the ADDR_WIDTH
 * parameter is equal to ceil(log2(DEPTH))+1, with the LSB indicating the
 * appropriate word (first or second pair of bytes) in the 4-byte SRAM row.
 */

`define USE_4KB_ONLY 1

module ram_sync_1rw1r
#(
    parameter DATA_WIDTH = 16,
    parameter ADDR_WIDTH = 12,                      /* Equal to ceil(log2(DEPTH))+1. */
    parameter DEPTH = 2048
)(
    input clk,
    input wen,
    input rwen,
    input [ADDR_WIDTH-1:0] rwadr,
    input [DATA_WIDTH-1:0] wdata,
    input ren,
    input [ADDR_WIDTH-1:0] radr,
    output [DATA_WIDTH-1:0] rwdata,
    output [DATA_WIDTH-1:0] rdata
);
        
    if (DEPTH == 1024) begin                        /* Implies an address width of 11 bits (not checked!). */
        wire [31:0] rdata_w;
        wire [31:0] rwdata_w;
        reg [ADDR_WIDTH-1:0] radr_r;
        reg [ADDR_WIDTH-1:0] rwadr_r;

        always @(posedge clk) begin
            radr_r <= radr;
            rwadr_r <= rwadr;
        end

        sky130_sram_4kbyte_1rw1r_32x1024_8 #(
            .VERBOSE(0)
        ) sram_4kb_inst (
            .clk0(clk),
            .csb0(~(wen | rwen)),
            .web0(~wen),
            .wmask0({{2{rwadr[0]}}, {2{~rwadr[0]}}}),
            .addr0(rwadr[ADDR_WIDTH-1:1]),
            .din0({wdata, wdata}),
            .dout0(rwdata_w),
            .clk1(clk),
            .csb1(~ren),
            .addr1(radr[ADDR_WIDTH-1:1]),
            .dout1(rdata_w)
        );

        assign rdata = radr_r[0] ? rdata_w[31:DATA_WIDTH] : rdata_w[DATA_WIDTH-1:0];
        assign rwdata = rwadr_r[0] ? rwdata_w[31:DATA_WIDTH] : rwdata_w[DATA_WIDTH-1:0];
    end

    else if (DEPTH == 2048) begin                   /* Implies an address width of 12 bits (not checked!). */
        reg [ADDR_WIDTH-1:0] radr_r;
        reg [ADDR_WIDTH-1:0] rwadr_r;

        always @(posedge clk) begin
            radr_r <= radr;
            rwadr_r <= rwadr;
        end

        if (`USE_4KB_ONLY) begin
            wire [31:0] rdata_w_0;
            wire [31:0] rdata_w_1;
            wire [31:0] rwdata_w_0;
            wire [31:0] rwdata_w_1;

            sky130_sram_4kbyte_1rw1r_32x1024_8 #(
                .VERBOSE(0)
            ) sram_4kb_inst_0 (
                .clk0(clk),
                .csb0(~((wen | rwen) & ~rwadr[ADDR_WIDTH-1])),
                .web0(~(wen & ~rwadr[ADDR_WIDTH-1])),
                .wmask0({{2{rwadr[0]}}, {2{~rwadr[0]}}}),
                .addr0(rwadr[ADDR_WIDTH-2:1]),
                .din0({wdata, wdata}),
                .dout0(rwdata_w_0),
                .clk1(clk),
                .csb1(~(ren & ~radr[ADDR_WIDTH-1])),
                .addr1(radr[ADDR_WIDTH-2:1]),
                .dout1(rdata_w_0)
            );

            sky130_sram_4kbyte_1rw1r_32x1024_8 #(
                .VERBOSE(0)
            ) sram_4kb_inst_1 (
                .clk0(clk),
                .csb0(~((wen | rwen) & rwadr[ADDR_WIDTH-1])),
                .web0(~(wen & rwadr[ADDR_WIDTH-1])),
                .wmask0({{2{rwadr[0]}}, {2{~rwadr[0]}}}),
                .addr0(rwadr[ADDR_WIDTH-2:1]),
                .din0({wdata, wdata}),
                .dout0(rwdata_w_1),
                .clk1(clk),
                .csb1(~(ren & radr[ADDR_WIDTH-1])),
                .addr1(radr[ADDR_WIDTH-2:1]),
                .dout1(rdata_w_1)
            );

            assign rdata = radr_r[ADDR_WIDTH-1] ? (radr_r[0] ? rdata_w_1[31:DATA_WIDTH] : rdata_w_1[DATA_WIDTH-1:0])
                                                : (radr_r[0] ? rdata_w_0[31:DATA_WIDTH] : rdata_w_0[DATA_WIDTH-1:0]);
            assign rwdata = rwadr_r[ADDR_WIDTH-1] ? (rwadr_r[0] ? rwdata_w_1[31:DATA_WIDTH] : rwdata_w_1[DATA_WIDTH-1:0])
                                                  : (rwadr_r[0] ? rwdata_w_0[31:DATA_WIDTH] : rwdata_w_0[DATA_WIDTH-1:0]);
        end

        else begin
            wire [31:0] rdata_w;
            wire [31:0] rwdata_w;

            sky130_sram_8kbyte_1rw1r_32x2048_8 #(
                .VERBOSE(0)
            ) sram_8kb_inst (
                .clk0(clk),
                .csb0(~(wen | rwen)),
                .web0(~wen),
                .wmask0({{2{rwadr[0]}}, {2{~rwadr[0]}}}),
                .addr0(rwadr[ADDR_WIDTH-1:1]),
                .din0({wdata, wdata}),
                .dout0(rwdata_w),
                .clk1(clk),
                .csb1(~ren),
                .addr1(radr[ADDR_WIDTH-1:1]),
                .dout1(rdata_w)
            );

            assign rdata = radr_r[0] ? rdata_w[31:DATA_WIDTH] : rdata_w[DATA_WIDTH-1:0];
            assign rwdata = rwadr_r[0] ? rwdata_w[31:DATA_WIDTH] : rwdata_w[DATA_WIDTH-1:0];
        end
    end
endmodule
