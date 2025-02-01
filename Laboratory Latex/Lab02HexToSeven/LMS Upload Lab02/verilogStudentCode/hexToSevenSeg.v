//------------------------------------------
// Name:    Chris Coulston
// Date:    Spring 2020
// File:    hexToSevenSeg
// Purp:    Hex to 7-segment converter
//------------------------------------------
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
