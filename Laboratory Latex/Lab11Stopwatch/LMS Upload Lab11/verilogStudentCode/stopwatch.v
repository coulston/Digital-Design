//*****************************************************************
// Name:    <Your Name>
// Date:    <Term Year>
// File:    stopwatch.v
// Purp:    stopwatch module that unites the datapath and control
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
//*****************************************************************
// Define the control words for each state
// cw[5] 2x1 mux		cw[4]	register		cw[3]   mod10Counter		cw[2]   mod10Counter			cw[1:0] tenthSecondCounter
// 1 mod10counter		0 hold lap reg		0 hold						0 hold							00    hold
// 0 lap register		1 load lap reg		1 synch reset				1 enable							01    count down
// 																													10    count up
// 																													11    load
//*****************************************************************

module stopwatch(clk, resetn, S1, S2, tenHex, unitHex, tenthHex);

	parameter SW_VECTOR_LENGTH	= 3;		// Buttons, sw[2:1] set outside datapath
   parameter CW_VECTOR_LENGTH	= 6;

   input wire        clk, resetn;
	input wire			S1, S2;
	output wire [6:0] tenHex, unitHex, tenthHex;

	wire [CW_VECTOR_LENGTH-1:0] cw;
	wire [SW_VECTOR_LENGTH-1:0] sw;
	wire tenth;

	assign sw[0] = tenth;
	assign sw[1] = S1;
	assign sw[2] = S2;

	datapath  dpsw (
	controlUnit  cpsw (

endmodule
