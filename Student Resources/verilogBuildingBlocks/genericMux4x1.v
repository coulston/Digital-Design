//------------------------------------------
//	Name:	Chris Coulston
// Date:	Spring 2020
// File:	genericMux4x1
//	Purp:	Select one of four N-bit values on output
//------------------------------------------
//------------------------------------------
module genericMux4x1(y3, y2, y1, y0, sel, f);

    parameter n = 8;

    input wire [n-1:0]  y3, y2, y1, y0;
    input wire [1:0]    sel;
    output reg [n-1:0]  f;

    always @(*)
        case(sel)
	    2'b00: f=y0;
	    2'b01: f=y1;
	    2'b10: f=y2;
	    2'b11: f=y3;
    endcase
endmodule
