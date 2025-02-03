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
module decode3x8(dataIn, sel, y);

    input wire       dataIn;
    input wire [2:0] sel;
    output reg [7:0] y;

    always @(*)
        case (sel)
			  3'b000: y = {7'h00, dataIn        };
			  3'b001: y = {6'h00, dataIn, 1'b00};
			  3'b010: y = {5'h00, dataIn, 2'b00};
			  3'b011: y = {4'h00, dataIn, 3'b00};
			  3'b100: y = {3'h00, dataIn, 4'h00};
			  3'b101: y = {2'h00, dataIn, 5'b00};
			  3'b110: y = {1'h00, dataIn, 6'b00};
			  3'b111: y = {        dataIn, 7'h00};
		     default:    y = 8'h00;
        endcase
endmodule
