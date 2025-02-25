//*****************************************************************
// Name:    <Your Name>
// Date:    <Term Year>
// File:    hiLow_tb.v
// Purp:    hiLow_tb
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
module hiLow_tb;

    reg  [3:0] t_seedSwitch, t_guessSwitch;
	 reg  [1:0] t_playSwitch;
    reg        t_randBut, t_hiLowBut;

	 wire [6:0] t_hiLowSeg;
	 wire [6:0] t_randDisp;
	 wire [3:0] t_greenLEDs;

	 hiLow uut (t_seedSwitch, t_playSwitch, t_guessSwitch, t_randBut, t_hiLowBut, t_randDisp, t_greenLEDs, t_hiLowSeg);

    initial
        begin

				// Press all the buttons
            t_randBut = 0;
			   t_hiLowBut = 0;

				// Start with play with 4 guesses
				t_playSwitch = 2'b00;
			  // Seed=0xF=15 generates randNum=0xE=14;
			  t_seedSwitch = 4'b1111;	t_guessSwitch = 4'b0010; 	#30		// Low

				// Reduce to 3 guess left
			  t_playSwitch = 2'b01;
			  // Seed=0xE=14 generates randNum=0xA=10
			  t_seedSwitch = 4'b1110; 	t_guessSwitch = 4'b1111; 	#30		// High

			  // Only 1 guess left!
			  t_playSwitch = 2'b11;
			  // Seed=0xA=10 generates randNum=0x4=4
			  t_seedSwitch = 4'b1010; 	t_guessSwitch = 4'b0100; 			   // Win

		 end
endmodule
