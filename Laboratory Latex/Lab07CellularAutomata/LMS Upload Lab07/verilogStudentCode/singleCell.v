//*****************************************************************
// Name:    <Your Name>
// Date:    <Term Year>
// File:    singleCell.v
// Purp:    a single CA processing element
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
module singleCell(clk, reset, rule, currentState, initialState, neighborhoodState, loadOrRun);

	 input wire         clk, reset;
	 input wire  [7:0]  rule;
	 output wire        currentState;
	 input wire         initialState;
	 input wire  [2:0]  neighborhoodState;
	 input wire         loadOrRun;



endmodule
