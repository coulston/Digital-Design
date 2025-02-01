//*****************************************************************
// Name:    Thomas MacDougall
// Date:    Fall 2023
// Lab:     05
// Purp:    hiLow w/ hints - Development of Labs for New Boards
//
// Assisted: Dr. Sager & Aaron Hsu
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
module hotCold_tb;

    reg  [3:0] t_seedSwitch, t_guessSwitch;
	 reg  [1:0] t_playSwitch;
    reg        t_randBut, t_hiLowBut, t_hotColdBut;

	 wire [3:0] RandHex;
	 wire [6:0] t_hiLowSeg, t_hotColdSeg, t_randDisp;
	 wire [3:0] t_greenLEDs;

	 hotCold uut (t_seedSwitch, t_playSwitch, t_guessSwitch, t_randBut, t_hiLowBut, t_hotColdBut, t_randDisp, t_greenLEDs, t_hiLowSeg, t_hotColdSeg);

    initial
        begin

				// Press all the buttons
            t_randBut = 0;
			   t_hiLowBut = 0;
				t_hotColdBut = 0;

				// Seed = 4'b1010 = 10 generates randNum = 4'b0100 = 4
				// warmThreshold[3:0] = 4'b0100 = 4
				// coldThreshold[3:0] = 4'b1010 = 10

				t_seedSwitch = 4'b1010; t_guessSwitch = 4'b1111; 	#20		// Cold + 11
				t_seedSwitch = 4'b1010;	t_guessSwitch = 4'b1110; 	#20		// Cold + 10
				t_seedSwitch = 4'b1010;	t_guessSwitch = 4'b1101; 	#20		// Warm + 9
				t_seedSwitch = 4'b1010;	t_guessSwitch = 4'b1000; 	#20		// Warm + 4
				t_seedSwitch = 4'b1010;	t_guessSwitch = 4'b0111; 	#20		// Hot  + 3


				// Seed = 4’b1111 = 15 generates randNum = 4’b1110 = 14
				// warmThreshold[3:0] = 4'b0100 = 4
				// coldThreshold[3:0] = 4'b1010 = 10

				t_seedSwitch = 4'b1111; t_guessSwitch = 4'b0011; 	#20		// Cold - 60
				t_seedSwitch = 4'b1111; t_guessSwitch = 4'b0100; 	#20		// Cold - 50
				t_seedSwitch = 4'b1111; t_guessSwitch = 4'b0101; 	#20		// Warm - 49
				t_seedSwitch = 4'b1111; t_guessSwitch = 4'b1010; 	#20		// Warm - 25
				t_seedSwitch = 4'b1111; t_guessSwitch = 4'b1011; 	#20		// Hot  - 24
				t_seedSwitch = 4'b1111; t_guessSwitch = 4'b1110; 	#20  		// Hot  Equal

				t_seedSwitch = 4'b0000;		// Bogus to let last simulation value run
		end
endmodule
