/* Clock Divider Unit. */

module clk_divider
#(
    parameter DIVISOR = 128
)
(
    input clk_in,
    output clk_out
);
    reg div_clk;
    reg unsigned [31:0] counter = 31'b0;
    
    always @(posedge clk_in) begin
        counter <= counter + 1;
        if (counter >= (DIVISOR - 1)) begin
            counter <= 31'b0;
        end
        clk_out <= (counter < (DIVISOR / 2)) ? 1'b1 : 1'b0;
    end
endmodule