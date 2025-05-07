//*****************************************************************
// Name:    <Your Name>
// Date:    <Term Year>
// File:    hiLow.v
// Purp:    hiLow module
//
// Assisted: Christopher Coulston and Thomas MacDougall Spring 2023
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
module hiLow(seedSwitch, playSwitch, guessSwitch, randBut, hiLowBut, randSeg, greenLEDs, hiLowSeg);

	// Put variable decelaration here


	 //******************************************************************************
	 // hardware to randomie the seedSwitch value
	 //******************************************************************************

	 //******************************************************************************
	 // hardware to show the user the hex representation of the random number
	 //******************************************************************************

	 //******************************************************************************
	 // hardware show the user how many guesses they have left
	 //******************************************************************************


    //******************************************************************************
	 // hardware show the high, low, win
	 //	High = 'H'		Low = 'L'		wIn = 'I'
	 //			  hex[0]
	 //			  -----
	 //	hex[5]	|		|	hex[1]
	 //			|		|
	 //			 -----	    hex[6]
	 //	hex[4]	|		|
	 //			|		|	hex[2]
	 //		      -----
	 //			  hex[3]
	 //******************************************************************************


endmodule
