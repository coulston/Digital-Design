//*****************************************************************
// Name:    <Your Name>
// Date:    <Term Year>
// File:    stopwatch_tb.v
// Purp:    A testbench for stopwatch 
//
// Assisted by: Christopher Coulston Spring 2021
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
module stopWatch_tb;

    reg 				t_clk, t_resetn;
	 reg 				t_S1, t_S2;
	 wire [6:0] 	t_tenHex, t_unitHex, t_tenthHex;


	 stopwatch uut (t_clk, t_resetn, t_S1, t_S2, t_tenHex, t_unitHex, t_tenthHex);


    initial
        begin

			t_S1 = 1;		t_S2 = 1;

			t_resetn = 0;			#5
			t_resetn = 1;			#10

			#40

			$display("Button S2 pressed.");
			t_S2 = 0;				#20
			t_S2 = 1;				#60
										#20
										#60
										#20
										#60
										#20
										#20

			$display("Button S1 pressed.");
			t_S1 = 0;				#20
			t_S1 = 1;				#60
										#20
										#60
										#20
										#60
										#20

			$display("Button S2 pressed.");
			t_S2 = 0;				#20
			t_S2 = 1;				#20

			$display("Button S2 pressed.");
			t_S2 = 0;				#20
			t_S2 = 1;				#20
										#60

			$display("Button S1 pressed.");
			t_S1 = 0;				#20
			t_S1 = 1;

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
