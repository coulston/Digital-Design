//------------------------------------------
//	Name:	Chris Coulston
// Date:	Spring 2020
// File:	genericAdder
//	Purp:	Add a pair of N-bit values
//------------------------------------------
//------------------------------------------

module genericAdder(A, B, carryin, S, carryout);
    parameter n = 32;

    input 	carryin;
    input 	[n-1:0] A, B;
    output	[n-1:0] S;
    output 	carryout;

    wire 		[n:0] C;
    genvar 	i;

    assign C[0] = carryin;
    assign carryout = C[n-1];

    generate
        for (i = 0; i < n; i = i + 1)
        begin:addblock
            fullAdder stage(A[i], B[i], C[i], S[i], C[i+1]);
        end
    endgenerate
endmodule
