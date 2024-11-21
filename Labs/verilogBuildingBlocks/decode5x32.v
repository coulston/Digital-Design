//*****************************************************************
//	Name:	Chris Coulston
// Date:	Spring 2020
// File:	decode5x32
// Purp:	Route data in to one of 32 outputs
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
module decode5x32(dataIn, sel, y);

    input wire       dataIn;
    input wire [4:0] sel;
    output reg [31:0] y;

    always @(*)
        case (sel)
			  5'b00000: y = {31'b000, dataIn};
			  5'b00001: y = {30'b000, dataIn,  1'h0};
			  5'b00010: y = {29'b000, dataIn,  2'h00};
			  5'b00011: y = {28'b000, dataIn,  3'h00};
			  5'b00100: y = {27'b000, dataIn,  4'h00};
			  5'b00101: y = {26'b000, dataIn,  5'h00};
			  5'b00110: y = {25'b000, dataIn,  6'h00};
			  5'b00111: y = {24'b000, dataIn,  7'h00};
			  5'b01000: y = {23'b000, dataIn,  8'h00};
			  5'b01001: y = {22'b000, dataIn,  9'h00};
			  5'b01010: y = {21'b000, dataIn, 10'h00};
			  5'b01011: y = {20'b000, dataIn, 11'h00};
			  5'b01100: y = {19'b000, dataIn, 12'h00};
			  5'b01101: y = {18'b000, dataIn, 13'h00};
			  5'b01110: y = {17'b000, dataIn, 14'h00};
			  5'b01111: y = {16'b000, dataIn, 15'h00};
			  5'b10000: y = {15'b000, dataIn, 16'h00};
			  5'b10001: y = {14'b000, dataIn, 17'h00};
			  5'b10010: y = {13'b000, dataIn, 18'h00};
			  5'b10011: y = {12'b000, dataIn, 19'h00};
			  5'b10100: y = {11'b000, dataIn, 20'h00};
			  5'b10101: y = {10'b000, dataIn, 21'h00};
			  5'b10110: y = { 9'b000, dataIn, 22'h00};
			  5'b10111: y = { 8'b000, dataIn, 23'h00};
			  5'b11000: y = { 7'b000, dataIn, 24'h00};
			  5'b11001: y = { 6'b000, dataIn, 25'h00};
			  5'b11010: y = { 5'b000, dataIn, 26'h00};
			  5'b11011: y = { 4'b000, dataIn, 27'h00};
			  5'b11100: y = { 3'b000, dataIn, 28'h00};
			  5'b11101: y = { 2'b000, dataIn, 29'h00};
			  5'b11110: y = { 1'b0,   dataIn, 30'h00};
			  5'b11111: y = {         dataIn, 31'h00};
		     default:    y = 32'b000;
        endcase
endmodule