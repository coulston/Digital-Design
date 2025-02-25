//*****************************************************************
// Name:    <Your Name> 
// Date:    <Term Year>
// File:    andgate2.v
// Purp:    A 2-input AND gate
//
// Assisted by: Dr. Chris Coulston Spring 2020
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

module andgate2 (a, b, y);

    input a, b;
    output y;

    assign y = a & b;

endmodule
