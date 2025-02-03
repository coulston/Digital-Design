//------------------------------------------
//	Name:	Chris Coulston
// Date:	Spring 2020
// File:	genericMux2x1
//	Purp:	Select one of two N-bit values on output
//------------------------------------------
//------------------------------------------
module genericMux2x1(y1, y0, sel, f);

    parameter n = 8;

    input wire [n-1:0]  y1, y0;
    input wire          sel;
    output reg [n-1:0]  f;

    always @(*)
        if(sel == 1'b0)
            f=y0;
        else
            f=y1;
endmodule
