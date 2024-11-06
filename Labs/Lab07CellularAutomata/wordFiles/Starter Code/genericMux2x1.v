//*****************************************************************
// Name:     
// Date:     
// Lab:     07
// Purp:    cellularAutomata
//*****************************************************************
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