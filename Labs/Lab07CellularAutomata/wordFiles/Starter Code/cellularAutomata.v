//*****************************************************************
// Name:    Dr. Chris Coulston
// Date:    Spring 2020
// Lab:     07
// Purp:    cellularAutomata
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
module cellularAutomata(sButton, rButton, clk, reset, slideSwitches, currentLifeState, loadOrRunSlide );
    
	parameter N =
		  
    	input wire         sButton, rButton;
	output wire        clk;
	input wire         reset; 	 
	input wire [N-1:0]  slideSwitches;
	input wire         loadOrRunSlide;
	 
	output wire [N-1:0] currentLifeState;
	
	wire         srFeedback;
	wire [7:0]   rule;	 	 	 
	wire [N-1:0]  initialState;	 
	 
	assign rule = slideSwitches[7:0];
	assign initialState = slideSwitches;
	
	
    	singleCell arrayCell0th(clk, reset, rule, currentLifeState[0], initialState[0], {currentLifeState[1],currentLifeState[0],currentLifeState[N-1]}, loadOrRunSlide);
	// Add rest of singleCell instantations

	// Logic to generate an SR Latch
	assign clk =
	assign srFeedback =
		
endmodule
