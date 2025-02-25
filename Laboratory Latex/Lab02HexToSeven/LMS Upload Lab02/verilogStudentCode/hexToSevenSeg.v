//------------------------------------------
// Name:    <Your Name> 
// Date:    <Term Year>
// File:    hexToSevenSeg.v
// Purp:    Hex to 7-segment converter
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

//
//	Active low LEDs on segments
//
//            seg[0]
//            ------
//   seg[5]  |      |   seg[1]
//           |      |
//            ------    seg[6]
//   seg[4]  |      |
//           |      |   seg[2]
//            ------
//            seg[3]
//
//  Comments can really help our thinking
//
//------------------------------------------
module hexToSevenSeg(x, sevenSeg);

    output reg [6:0] sevenSeg;
    input [3:0] x;

    //------------------------------------------------
    // You will need to fill in the missing 15 rows
    //------------------------------------------------

    always @(x)
        case (x)

            4'b0100: sevenSeg = 7'b0011001;

        endcase
endmodule
