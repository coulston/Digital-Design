//*****************************************************************
// Name:     
// Date:     
// Lab:     07
// Purp:    cellularAutomata
//*****************************************************************
module singleCell(clk, reset, rule, currentState, initialState, neighborhoodState, loadOrRun);
    
    input wire          clk, reset;
	 input wire  [7:0]  rule;	 	 	 
	 output wire        currentState;
	 input wire         initialState;
	 input wire  [2:0]  neighborhoodState;
	 input wire         loadOrRun;

	 reg                nextLife;
	 wire			 	din;
		
	//------------------------------------------------------------------
	// current pattern	         111  110  101  100  011  010  001  000
	// new state for center cell	 1    0    0    1    0    0    0    1
	//------------------------------------------------------------------ 

	// add something here!
				
endmodule
