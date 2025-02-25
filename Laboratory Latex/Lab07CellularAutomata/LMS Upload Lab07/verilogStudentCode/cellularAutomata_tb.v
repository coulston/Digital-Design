//*****************************************************************
// Name:    <Your Name>
// Date:    <Term Year>
// File:    cellularAutomata_tb.v
// Purp:    testbench for the cellularAutomata module
//
// Assisted: Christopher Coulston Spring 2020
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
module cellularAutomata_tb;

    	 reg         t_sButton, t_rButton;
	 wire        t_clk;
	 reg         t_reset;
	 reg  [8:0]  t_slideSwitches;
	 reg         t_loadOrRun;

	 wire [8:0] t_currentLifeState;

	 cellularAutomata uut (t_sButton, t_rButton, t_clk, t_reset, t_slideSwitches, t_currentLifeState, t_loadOrRun);

	 //---------------------------
	 // Generate signals to
	 //---------------------------
    initial
        begin
            t_reset = 0;							#5

				t_reset = 1;
				t_loadOrRun = 0;						// Load operation
				t_slideSwitches = 9'b000010000;		#20

				t_loadOrRun = 1;
				t_slideSwitches = 9'b0001011010;
		 end

	 //---------------------------
	 // Generate a clock signal with period 20ns
	 //---------------------------
    always // no sensitivity list, so it always executes
		begin
			t_sButton = 1; 	t_rButton = 0;		#5;
			t_sButton = 0;	t_rButton = 0;		#5;
			t_sButton = 0; 	t_rButton = 1;		#5;
			t_sButton = 0;	t_rButton = 0;		#5;
		end


endmodule
