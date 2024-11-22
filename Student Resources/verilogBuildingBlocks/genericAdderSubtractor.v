//------------------------------------------
//	Name:	Chris Coulston
// Date:	Spring 2020
// File:	genericAdderSubtractor
//	Purp:	Add a pair of N-bit values
//------------------------------------------
//------------------------------------------

module genericAdderSubtractor(a, b, fnc, sumDiff, sovf, uovf);

    parameter N = 8;
	
    input 	wire				fnc;
    input 	wire [N-1:0] 	a, b;
    output	wire [N-1:0]   sumDiff;
    output 	wire				sovf, uovf; 
  
    wire [N:0] c;
	 wire [N-1:0] bXor;
	 
    genvar 	i;

    assign c[0] = fnc;

    generate
        for (i = 0; i < N; i = i + 1)
        begin:addblock 
				assign bXor[i] = b[i] ^ fnc;
            fullAdder stage(a[i], bXor[i], c[i], sumDiff[i], c[i+1]);	
        end
    endgenerate
	 
	 assign uovf = c[N];
	 assign sovf = c[N] ^ c[N-1];
	 
endmodule

  

