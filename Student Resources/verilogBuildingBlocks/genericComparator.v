//------------------------------------------
//	Name:	Chris Coulston
// Date:	Spring 2020
// File:	genericComparator
//	Purp:	Check the magnitude of two N-bit values
//-----------------------------------------
module genericComparator(x, y, gt, eq, lt);

    parameter N = 8;
		
    input wire [N-1:0] x, y;
    output wire        gt, eq, lt;

    assign gt = (x > y);
    assign eq = (x == y);
    assign lt = (x < y);
		
endmodule