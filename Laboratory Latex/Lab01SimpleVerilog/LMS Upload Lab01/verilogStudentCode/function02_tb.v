//*****************************************************************
// Name:    <Your Name> 
// Date:    <Term Year>
// File:    function02_tb.v
// Purp:    A testbench for f02
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
module function02_tb;

    wire t_f;
    reg t_a, t_b, t_c;

    // This is a component instantation - kinda like a function call, but not
    function02 uut(t_a, t_b, t_c, t_f);

initial
    begin
        $monitor(t_a, t_b, t_c, t_f);

        // Complete the stimulus vectors.  Do not put "#20" after the
        // last row - it will cause an error.
        t_a = 1'b0;	t_b = 1'b0;	t_c = 1'b0;		#20
        t_a = 1'b0;	t_b = 1'b0;	t_c = 1'b1;		#20

	// Put in the missing rows

        t_a = 1'b1;	t_b = 1'b1;	t_c = 1'b1;	    end
endmodule
