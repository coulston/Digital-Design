//*****************************************************************
// Name:    Dr. Chris Coulston
// Date:    Spring 2020
// Lab:     01
// Purp:    A testbench for a 2-input AND gate
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
module andgate2_tb;

    // Signals to connect the testbench to the AND gate.
    // These are like local variables
    wire    t_y;
    reg     t_a, t_b;

    // Make an instance of the AND gate as the unit under test (uut)
    andgate2 uut(t_a, t_b, t_y);

initial
    begin

        $monitor(t_a, t_b, t_y);

        // Run every conbination of inputs through the UUT
	// The #20 will delay 20ns in the simulation.  Do
	// Not put a #20 on the last row.

        t_a = 1'b0;        t_b = 1'b0;        #20
        t_a = 1'b0;        t_b = 1'b1;        #20
        t_a = 1'b1;        t_b = 1'b0;        #20
        t_a = 1'b1;        t_b = 1'b1;
	  end

endmodule
