//------------------------------------------
//	Name:	Chris Coulston
// Date:	Spring 2020
// File:	genericMux8x1
//	Purp:	Select one of four N-bit values on output
//------------------------------------------
//------------------------------------------
module genericMux8x1(y7, y6, y5, y4, y3, y2, y1, y0, sel, f);

    parameter n = 8;

    input wire [n-1:0]  y7, y6, y5, y4,y3, y2, y1, y0;
    input wire [2:0]    sel;
    output reg [n-1:0]  f;

    always @(*)
        case(sel) 
	    3'b000: f=y0;
	    3'b001: f=y1;
	    3'b010: f=y2;
	    3'b011: f=y3;
		 3'b100: f=y4;
	    3'b101: f=y5;
	    3'b110: f=y6;
	    3'b111: f=y7;
    endcase
endmodule