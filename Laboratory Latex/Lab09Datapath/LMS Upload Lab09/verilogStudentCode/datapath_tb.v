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
// Define the control words for each state
// cw[5] 2x1 mux		cw[4]	register		cw[3]   mod10Counter		cw[2]   mod10Counter			cw[1:0] tenthSecondCounter        
// 0 mod10counter		0 hold lap reg		0 hold						0 hold							00    hold
// 1 lap register		1 load lap reg		1 synch reset				1 enable							01    count down
// 																													10    count up
// 																													11    load
//*****************************************************************
module datapath_tb;

	parameter SW_VECTOR_LENGTH	= 3;
	parameter CW_VECTOR_LENGTH	= 6;
	
	reg	t_clk, t_resetn;
	reg	[CW_VECTOR_LENGTH-1:0]   t_cw;
	wire	t_tenth;
	wire	[6:0]   t_unitHex, t_tenthHex, t_tenHex;
	
	localparam   RESET_CW		= 6'b001011;
	localparam   STOP_CW			= 6'b000000;
	localparam   RUN_CW			= 6'b000010; 
	localparam   R2LR_CW			= 6'b010000; 
	localparam   INC_CW			= 6'b000111;
	localparam   LAPRUN_CW		= 6'b100010; 
	localparam   LAPINC_CW		= 6'b100111;
	localparam   LAPSTOP_CW		= 6'b100000; 
	 
	datapath uut (t_clk, t_resetn, t_cw, t_tenth, t_tenHex, t_unitHex, t_tenthHex);
	
	initial
		begin
			
			t_resetn = 0;			#5
			t_resetn = 1;			#10
			
			t_cw = RESET_CW;		#20  
			t_cw = STOP_CW;		#20
			
			$display("RUN/INC states.");
			t_cw = RUN_CW;			#40
			t_cw = INC_CW;			#20
			t_cw = RUN_CW;			#40
			t_cw = INC_CW;			#20
			t_cw = RUN_CW;			#40
			t_cw = INC_CW;			#20
			t_cw = RUN_CW;			#20
			
			$display("LAPRUN/LAPINC states.");
			t_cw = R2LR_CW;		#20
			t_cw = LAPRUN_CW;		#20
			t_cw = LAPINC_CW;		#20
			t_cw = LAPRUN_CW;		#40
			t_cw = LAPINC_CW;		#20
			t_cw = LAPRUN_CW;		#40
			t_cw = LAPINC_CW;		#20
			t_cw = LAPRUN_CW;		#20
			
			$display("RUN/INC states.");
			t_cw = RUN_CW;			#20
			t_cw = INC_CW;			#20
			t_cw = RUN_CW;			#40
			t_cw = INC_CW;			#20
			t_cw = RUN_CW;			#40
			t_cw = INC_CW;			#20
			t_cw = RUN_CW;			#40
			t_cw = INC_CW;			#20
			t_cw = RUN_CW;			#40
			t_cw = INC_CW;			#20
			t_cw = RUN_CW;			#20
			
			$display("RESET/STOP states.");
			t_cw = RESET_CW;		#20
			t_cw = STOP_CW;	
						
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
