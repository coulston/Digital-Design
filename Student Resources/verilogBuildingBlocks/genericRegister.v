//------------------------------------------
// Name:	Chris Coulston
// Date:	Spring 2020
// File:	genericRegister
// Purp:	Store a N-bit value
//------------------------------------------
//------------------------------------------
module genericRegister(clk, resetn, d, control, q);

    parameter n =16;
	
    output reg [n-1:0]  q;
    input wire          clk, resetn, control; 
    input wire [n-1: 0] d;

    always @ (negedge resetn, posedge clk)	
    if (!resetn)
        q <= 0;
    else
        case (control)
            1'b0: q <= q;      // Hold old value
            1'b1: q <= d;      //Load new value
        endcase
    
endmodule







  

