//------------------------------------------
//	Name:	Chris Coulston
// Date:	Spring 2020
// File:	fulladder.v
//	Purp:	1-bit full adder
//------------------------------------------
//
//------------------------------------------
module fullAdder(a, b, cin, sum, cout);
    output	sum, cout;
    input 	a, b, cin;

    assign sum = a ^ b ^ cin;
    assign cout = (a&b) | (a&cin) | (b&cin);

endmodule
