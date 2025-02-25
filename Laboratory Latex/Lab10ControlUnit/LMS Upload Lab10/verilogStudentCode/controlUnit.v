//*****************************************************************
// Name:    <Your Name>
// Date:    <Term Year>
// File:    conbtrolUnit.v
// Purp:    controlUnit module
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
module controlUnit(clk, reset, cw, sw);


	input wire         clk, reset;
	output reg [5 : 0]   cw;
	input wire [2 : 0]   sw;

	wire tenth, S1, S2;

	reg 			[3:0] state;
	reg 			[3:0] nextstate;

	localparam   RESET_CW   = 6'b001011;

	localparam   STOP_CW    = 6'b000000;


	parameter 	RESET_STATE   = 4'b0000,

					STOP_STATE    = 4'b0010,

					LS2LR_STATE   = 4'b1110;


	assign tenth = sw[0];
	assign S1 = sw[1];
	assign S2 = sw[2];

	 //------------------------------------------
	 // Take care of reset logic
	 //------------------------------------------
	always @(negedge reset, posedge clk)
		if (!reset)
			state <= RESET_STATE;
		else
			state <= nextstate;

	 //------------------------------------------
	 // Determine the output
	 //------------------------------------------
	always @(state) // always block to compute output
		begin
			case(state)

				STOP_STATE:			cw = STOP_CW;

				default:				cw = RESET_CW;
			endcase
		end


    //------------------------------------------
	 // Determine the next state
	 //------------------------------------------
	always @(*) // always block to compute nextstate
		begin
			case(state)

				STOP_STATE:
					begin
						case({S2,S1})
							2'b10:		nextstate = S2RESET_STATE;
							2'b01:		nextstate = S2R_STATE;
							default:		nextstate = STOP_STATE;
						endcase
					end

					default:					nextstate = RESET_STATE;

			endcase
		end

endmodule
