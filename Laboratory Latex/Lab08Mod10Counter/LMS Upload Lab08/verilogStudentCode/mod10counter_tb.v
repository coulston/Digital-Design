//*****************************************************************
// Name:    Dr. Chris Coulston
// Date:    Spring 2020
// Lab:
// Purp:    A testbench for regFile module
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
//
// If work is not being created or modelsim is not working, then Project -> Clean Project (All Revisions)
//
//*****************************************************************

module mod10counter_tb;

	reg	t_clk, t_resetn, t_enb, t_synch;
	wire	t_roll;
	wire	[3:0]  t_currentCount;

	mod10counter uut (t_clk, t_resetn, t_enb, t_synch, t_roll, t_currentCount);

	initial
		begin

			t_enb = 1'b0;	t_synch = 1'b0;

			t_resetn = 0;			#5
			t_resetn = 1;			#10

			t_enb		= 1'b1;		#180
			t_enb		= 1'b0;		#20
			t_enb		= 1'b1;		#40
			t_enb		= 1'b0;		#20

			t_synch	= 1'b1;		#20
			t_synch	= 1'b0;		t_enb		= 1'b1;

		 end

	//---------------------------
	// Generate a clock signal with period 20ns
	//---------------------------
	always // no sensitivity list, so it always executes
		begin
			t_clk = 1;			#10;
			t_clk = 0;			#10;
		end


endmodule
