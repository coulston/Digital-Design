//*****************************************************************
// Name:    Name:    Dr. Christopher Coulston
// Date:    Fall 2023
// Lab:     06
// Purp:    calculator
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
module calculator(x, y, interp, addSub, YorRES, msXdisplay, lsXdisplay, msfdisplay, lsfdisplay);

    input wire  [3:0] x, y;
    input wire        interp, addSub, YorRES;

	output wire [6:0] msXdisplay, lsXdisplay, msfdisplay, lsfdisplay;

	wire [3:0] res;
	wire       n_interp, n_addSub;
	wire       sovf, ovf;
	wire [6:0] msYdisplay, lsYdisplay, msRESdisplay, lsRESdisplay;

	assign n_interp = ~ interp;
	assign n_addSub = ~ addSub;

    sigUnsig displayX   (x, n_interp, 1'b0, msXdisplay, lsXdisplay);
	sigUnsig displayY   (y, n_interp, 1'b0, msYdisplay, lsYdisplay);
	sigUnsig displayRES (res, n_interp, 1'b0, msRESdisplay, lsRESdisplay);

	genericMux2x1 #(7) ms(msYdisplay,msRESdisplay, YorRES, msfdisplay);
	genericMux2x1 #(7) ls(lsYdisplay,lsRESdisplay, YorRES, lsfdisplay);

	genericAdderSubtractor #(4) xPlusMinusY (x, y, n_addSub, res, sovf, ovf);

endmodule
