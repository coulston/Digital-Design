//*****************************************************************
// Name:    Dr. Chris Coulston
// Date:    Spring 2020
// Lab:     06
// Purp:    A testbench for signUnsig module
//
// Assisted: The entire EENG 284 class
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
module sigUnsig_tb;
	
    reg  [3:0] t_x;	 	 
    reg        t_interp, t_ovf;
	 
	 wire [6:0] t_msDisplay, t_lsDisplay;

	 sigUnsig uut (t_x, t_interp, t_ovf, t_msDisplay, t_lsDisplay);
	
    initial
        begin
        						
            t_interp = 1; t_ovf = 0;	t_x = 4'b0010;		#20
				t_interp = 0; t_ovf = 0;	t_x = 4'b1100;		#20
				t_interp = 1; t_ovf = 0;	t_x = 4'b1100;		#20
				t_interp = 0; t_ovf = 0;	t_x = 4'b0111;		#20
				t_interp = 1; t_ovf = 0;	t_x = 4'b1000;		#20
				t_interp = 1; t_ovf = 1;	t_x = 4'b1010;		#20
								
			   t_x = 4'b0000;		// Bogus to let last simulation value run

		 end
endmodule
