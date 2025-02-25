//*****************************************************************
// Name:    <Your Name>
// Date:    <Term Year>
// File:    conbtrolUnit_tb.v
// Purp:    A testbench for stopwatch control unit
//
// Assisted by: Christopher Coulston Spring 2020
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
module controlUnit_tb;

   parameter SW_VECTOR_LENGTH	= 3;
   parameter CW_VECTOR_LENGTH	= 6;

	reg t_clk, t_resetn;
	wire [CW_VECTOR_LENGTH - 1 : 0] t_cw;
	wire [SW_VECTOR_LENGTH - 1 : 0] t_sw;

	reg tenth, S1, S2;

	controlUnit uut (t_clk, t_resetn, t_cw, t_sw);

	assign t_sw[0] = tenth;
	assign t_sw[1] = S1;
	assign t_sw[2] = S2;

	initial
		begin

			tenth = 0;	S1 = 1;		S2 = 1;

			t_resetn = 0;		#5
			t_resetn = 1;		#10

			#40

			$display("Button S2 pressed.");
			S2 = 0;							#20
			S2 = 1;	tenth = 0;			#40
			tenth = 1;						#20
			tenth = 0;						#40
			tenth = 1;						#20
			tenth = 0;						#40
			tenth = 1;						#20
			tenth = 0;						#20

			$display("Button S1 pressed.");
			S1 = 0;							#40
			S1 = 1;	tenth = 0;			#40
			tenth = 1;						#20
			tenth = 0;						#40
			tenth = 1;						#20
			tenth = 0;						#40
			tenth = 1;						#20
			tenth = 0;						#20

			$display("Button S2 pressed.");
			S2 = 0;				#40
			S2 = 1;				#20

			$display("Button S2 pressed.");
			S2 = 0;				#40
			S2 = 1;				#20

			$display("Button S1 pressed.");
			S1 = 0;				#40
			S1 = 1;				#20

			$display("Button S2 pressed.");
			S2 = 0;				#40
			S2 = 1;				#20

			$display("Button S1 pressed.");
			S1 = 0;				#40
			S1 = 1;

		 end

	 //---------------------------
	 // Generate a clock signal with period 20ns
	 //---------------------------
	always // no sensitivity list, so it always executes
		begin
			t_clk = 1; 		#10;
			t_clk = 0;	   #10;
		end


endmodule
