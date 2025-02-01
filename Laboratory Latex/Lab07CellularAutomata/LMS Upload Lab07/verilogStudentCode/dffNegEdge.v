module dffNegEdge (clk, reset, data, q);

    input wire data, clk, reset ;
    output reg q;

    always @ ( posedge clk or negedge reset)
        if (~reset) begin
            q <= 1'b0;
        end else begin
            q <= data;
        end

endmodule
