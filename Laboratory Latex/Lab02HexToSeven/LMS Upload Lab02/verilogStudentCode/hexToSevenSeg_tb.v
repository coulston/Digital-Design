//*****************************************************************
// Name:    Dr. Chris Coulston
// Date:    Spring 2020
// Lab:     02
// Purp:    A testbench for hexToSevenSeg
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
module hexToSevenSeg_tb;

    wire [2:0] t_sevSeg;
    reg [3:0] t_x;

    // This is a component instantation - kinda like a function call, but not
    hexToSevenSeg uut(t_x, t_sevSeg);

initial
    begin
        $monitor(t_x, t_sevSeg);

        // Complete the stimulus vectors.  Do not put "#20" after the
        // last row - it will cause an error.
        t_x = 4'b0000;		#20
        t_x = 4'b0001;		#20

        t_x = 4'b1111;
		      end
endmodule
