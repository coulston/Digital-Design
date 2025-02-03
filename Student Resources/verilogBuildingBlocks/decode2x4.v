//*****************************************************************
//	Name:	Chris Coulston
// Date:	Spring 2020
// File:	decode2x4
// Purp:	Route data in to one of 4 outputs
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
module decode2x4(dataIn, sel, y);

    input wire       dataIn;
    input wire [1:0] sel;
    output reg [3:0] y;

    always @(*)
        case (sel)
			  2'b00: y = {3'b000, dataIn};
			  2'b01: y = {2'b000, dataIn, 1'b00};
			  2'b10: y = {1'b000, dataIn, 2'b00};
			  2'b11: y = {dataIn, 3'b000};
		     default:    y = 4'b000;
        endcase
endmodule
