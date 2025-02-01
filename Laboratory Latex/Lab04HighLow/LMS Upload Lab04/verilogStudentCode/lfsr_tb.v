//*****************************************************************
// Name:    Thomas MacDougall
// Date:    Spring 2023
// Lab:     04
// Purp:    LSFR - Test Bench - Development of Labs for New Boards
//
// Assisted: Dr. Coulston, Dr. Sager & Aaron Hsu
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
module lfsr_tb;

    reg  [3:0] t_inputSeed;
	 wire [3:0] t_outputRand;

	 lfsr uut (t_inputSeed, t_outputRand);

    initial
        begin

			t_inputSeed = 4'b1110;				 	#20
			t_inputSeed = 4'b1101;				 	#20
			t_inputSeed = 4'b1010;				 	#20
			t_inputSeed = 4'b0100;


		 end
endmodule
