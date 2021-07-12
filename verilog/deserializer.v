/* Deserializer module. */

module deserializer
#(
    parameter FETCH_WIDTH = 16
)
(
    input clk,
    input rst_n,
    input serial_data,
    input en,
    output reg [FETCH_WIDTH-1:0] parallel_data,
    output reg out_valid
);

    localparam COUNTER_WIDTH = $clog2(FETCH_WIDTH);
    reg [COUNTER_WIDTH-1:0] count_r;
        
    always @(posedge clk) begin
        if (rst_n) begin
            if (en) begin
                parallel_data[count_r] <= serial_data;
                count_r <= (count_r == FETCH_WIDTH - 1) ? 0 : count_r + 1;
                out_valid <= (count_r == FETCH_WIDTH - 1);
            end
            else begin
                count_r <= 0;
                out_valid <= 0;
            end
        end
        else begin
            parallel_data <= {FETCH_WIDTH{1'b0}};
            count_r <= 0;
            out_valid <= 0;
        end
    end
endmodule
