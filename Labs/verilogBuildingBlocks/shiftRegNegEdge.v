//------------------------------------------
// Name:	Chris Coulston
// Date:	Spring 2020
// File:	shift register
// Purp:	
// Control:
//            00 hold
//            01 shift right
//            10 shift left
//            11 load
//------------------------------------------
//------------------------------------------
module genericShiftReg (clk, resetn, d, si, control, q);

    parameter n =16;
    output 	reg [n-1:0] q;
    input 	clk, resetn, si; 
    input [2:0] control;
    input	[n-1: 0] d;

    always @ (negedge resetn, posedge clk)	
        if (!resetn)
            q <= 0;
        else
            case (c)
                2'b00: q <= q;      		// Hold old value
                2'b01: q <= {si, q[n-1:1]}; 	// Shift right by 1 bit
                2'b10: q <= {q[n-2:0],si};	// Shift left 1 bit
                2'b11: q <= d;      		// Load new value
            endcase
endmodule







  

