/* Serializer module. */

module serializer
#(
    parameter FETCH_WIDTH = 16
)
(
    input clk,
    input rst_n,
    input en,
    input [FETCH_WIDTH-1:0] parallel_data,
    output reg sender_deq,
    output reg serial_data,
    output reg out_valid
);

    localparam COUNTER_WIDTH = $clog2(FETCH_WIDTH);
    reg [COUNTER_WIDTH-1:0] select_r;
    
    always @(posedge clk) begin
        if (rst_n) begin
            if (en) begin
                select_r <= (select_r + 1) % FETCH_WIDTH;
            end
            else begin
                select_r <= 0;
            end
        end
        else begin
            select_r <= 0;
        end
    end

    always @(posedge clk) begin
        if (rst_n && en) begin
            serial_data <= parallel_data[select_r];
            out_valid <= 1;
        end
        else begin
            serial_data <= 0;
            out_valid <= 0;
        end
    end

    always @(posedge clk) begin
        if (rst_n && en) begin
            // Need to trigger the sender dequeue signal on the third to last cycle since
            // there is a two-cycle read delay. This ensures that we have no gaps between
            // serial data packets.
            sender_deq <= (select_r == FETCH_WIDTH - 3);
        end
        else begin
            sender_deq <= 0;
        end
    end
endmodule
