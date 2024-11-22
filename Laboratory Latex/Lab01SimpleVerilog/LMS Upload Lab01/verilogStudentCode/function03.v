//*****************************************************************
// Name:    Dr. Chris Coulston
// Date:    Spring 2020
// Lab:     01
// Purp:    Logic function f03
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
module function03(a, b, c, f03);

    input  a, b, c;
    output f03;

    // Wires are signals that begin and end inside the module
    wire p1, p2, p4, p7;
	 
    // f03 has four product terms, you'll learn about these in chapter 3
    // The order of the following rows does not matter, they all "run"
    // at the same time, they are concurrent assignment statements (CSA)
    assign p1 = ~a & ~b &  c;
    assign p2 = ~a &  b & ~c;
    assign p4 =  a & ~b & ~c;
    assign p7 =  a &  b &  c;

    assign f03 = p1 | p2 | p4 | p7;

endmodule