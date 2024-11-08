//*****************************************************************
// Name:    Dr. Christopher Coulston
// Date:    Fall 2023
// Lab:     06
// Purp:    sigUnsig
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
module sigUnsig(x, interp, ovf, msDisplay, lsDisplay);
	
    

		 
    //******************************************************************************
	// Logical organization of 7-segment display 
	//
	//				 hex[0]
	//				 -----
	//	hex[5]	|		|	hex[1]
	//				|		|	
	//				 -----	hex[6]
	//	hex[4]	|		|
	//				|		|	hex[2]
	//				 -----
	//				 hex[3]	 
	//******************************************************************************	
    localparam [6:0] displayBlank = 7'b       ; 
	localparam [6:0] displayOne   = 7'b       ; 
	localparam [6:0] displayMinus = 7'b       ; 
	localparam [6:0] displayX     = 7'b       ; 


	//******************************************************************************
    //	 
	// interp = 1 signed
	// interp = 0 unsigned
	//
	//******************************************************************************	 


endmodule

