//------------------------------------------
// Name:    Chris Coulston
// Date:    Spring 2020
// File:    combinedLab01.v
// Purp:    Combination of lab 1 functions
//------------------------------------------
//------------------------------------------
module combinedLab01(a,b,c, f);

    input wire a, b, c;
    //-----------------------------------------------------------------
    // Since we will be using the alwayts/case statement to drive the
    // output we need to make the output a "reg" type.  Reg types can
    // can drive an output.
    //-----------------------------------------------------------------
    // f[2] = f04
    // f[1] = f03
    // f[0] = f02
    //-----------------------------------------------------------------
    output reg [2:0] f;

    //-----------------------------------------------------------------
    // This is like a local variable
    //-----------------------------------------------------------------
    wire [2:0] x;

    //-----------------------------------------------------------------
    // A vector is a collection of bits, much like an array.  You can
    // build a vector from bits by concatenate them together
    // by putting the elements in a parenthesis list
    //-----------------------------------------------------------------
    assign x = {a,b,c};

    //-----------------------------------------------------------------
    // The always block continously runs, just like an assign statement
    // You should think about the following block of code like a single
    // big assign statement.
    //
    // The case statement find a match between the current value of x
    // and one of the 8 values listed.  The matching value causes the
    // corresponding assignment of f to take place.  For example if
    // x is equal to 101, then f is assigned the value xxx.
    //-----------------------------------------------------------------
    always @(*)
        case (x)
            3'b000: f = 3'b000;
            3'b001: f = 3'b000;
            3'b010: f = 3'b000;
            3'b011: f = 3'b000;
            3'b100: f = 3'b000;
            3'b101: f = 3'b000;
            3'b110: f = 3'b000;
            3'b111: f = 3'b000;
        endcase
endmodule
