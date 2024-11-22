//------------------------------------------
// Name: Chris Coulston
// Date: Spring 2020
// File: genericCounter
// Purp: Count up mod 2^N
// Truth Table:
//       control = 00    hold
//       control = 01    count down
//       control = 10    count up
//       control = 11    load
//------------------------------------------
module genericCounter(clk, resetn, d, control, q);

    parameter N = 16;

    output reg [N-1:0]   q;
    input  wire          clk, resetn; 
    input  wire [1: 0]   control;
    input  wire [N-1: 0] d;

    always @ (negedge resetn, posedge clk)	
        if (!resetn)
            q <= 0;
        else
            case (control)
                2'b00: q <= q;      // Hold old value
                2'b01: q <= q - 1'b1;    // Count down
                2'b10: q <= q + 1'b1;    // Count up
                2'b11: q <= d;      //Load new value
	endcase
endmodule 
