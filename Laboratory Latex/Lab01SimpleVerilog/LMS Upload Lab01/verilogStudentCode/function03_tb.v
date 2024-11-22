//*****************************************************************
// Name:    Dr. Chris Coulston
// Date:    Spring 2020
// Lab:     01
// Purp:    A testbench for a simple logic function
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
module function03_tb;

    wire t_f;
    reg t_a, t_b, t_c;

    function03 uut(t_a, t_b, t_c, t_f);

initial
    begin
        $monitor(t_a, t_b, t_c, t_f);

        // Complete the stimulus vectors.  Do not put "#20" after the
        // last row - it will cause an error.		
        t_a = 1'b0;	t_b = 1'b0;	t_c = 1'b0;		#20 	
        t_a = 1'b0;	t_b = 1'b0;	t_c = 1'b1;		#20 	

	// Add the missing lines of code 

        t_a = 1'b1;	t_b = 1'b1;	t_c = 1'b1;	
    end
endmodule
