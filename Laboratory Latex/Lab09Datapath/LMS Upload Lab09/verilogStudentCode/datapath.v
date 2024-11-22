//*****************************************************************
// Name:    Dr. Chris Coulston
// Date:    Spring 2021
// Lab:     
// Purp:    datapath
//
// Assisted: The entire EENG 383 class
// Assisted by: Dr. Vibhuti Dave
//
// Academic Integrity Statement: I certify that, while others may have
// assisted me in brain storming, debugging and validating this program,
// the program itself is my own work. I understand that submitting code
// which is the work of other individuals is a violation of the course
// Academic Integrity Policy and may result in a zero credit for the
// assignment, course failure and a report to the Academic Dishonesty
// Board. I also understand that if I knowingly give my original work to
// another individual that it could also result in a zero credit for the
// assignment, course failure and a report to the Academic Dishonesty
// Board.
//*****************************************************************
module datapath(clk, reset, cw, tenth, tenHex, unitHex, tenthHex);
		  	  
   parameter N = 4;			// Adjust the length to accomodiate the localparam defined below
	 
   input wire	clk, reset;	 
	input wire  [5:0] cw;
	// Make sure to include the other parameters here

	wire [N-1:0]  clkCount;

	// You cannot put "N" as the length specifier for constants. 
	// So you will need to update the length specifier to be consistent 
	// with the value of the parameter N defined above.
	localparam   tenthSecondConstant   = 4'h000002;
   localparam   zero24 = 4'h000000;
		
	genericCounter    #(N) tenthSecondCounter(clk, reset, zero24, cw[1:0], clkCount); 
   genericComparator #(N) tenthSecondCompare(clkCount, tenthSecondConstant, , tenth,);
		
	// Need to instantiate the other components here
	
endmodule