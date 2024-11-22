//------------------------------------------
// Name: Chris Coulston
// Date: Spring 2020
// File: mod10counter - based on Lab 7 from PSU CSE 271
// Purp: 
//------------------------------------------
//
//------------------------------------------
// Knowledge
// To instantiate a generic use "#(list)" before the instance name
// The simulator wants instance names, even though Quartus doesn;t need them
// Unconnected outputs are left empty in the parameter list
// You cannot mix ordered parameter list and named parameter list
// Message Supression Manager -> 10275 dangling comma 
// Edit the qsf file to modifying pins - easier than pull downs in pin placement
//------------------------------------------
module mod10counter(clk, resetn, enb, synch, roll, currentCount);

   input wire        clk, resetn;
	input wire        enb, synch;
	
	output wire [3:0] currentCount;
	output reg        roll;
	
   wire  [3:0]       nextCount, toRegister;
	wire 					equalNine;
	reg               regEnb, muxSel;
	
   genericAdder       #(4) increment   (4'b0001, currentCount, 1'b0, nextCount, );      // Increments currentCount once a second	
   genericComparator  #(4) rollOverCompare(currentCount, 4'b1001, , equalNine,);
   genericMux2x1      #(4) loadOrCount (nextCount, 4'b0000, muxSel, toRegister);    // Loads 0 instead of nextCount when going to 10
   genericRegister    #(4) countValue  (clk, resetn, toRegister, regEnb, currentCount);  // loads on every slow clock positive edge  
	
    always @(*)
        case ({enb,synch,equalNine})
            3'b000: {muxSel, regEnb, roll} = 3'b?00;
            3'b001: {muxSel, regEnb, roll} = 3'b?00;
            3'b010: {muxSel, regEnb, roll} = 3'b010;
            3'b011: {muxSel, regEnb, roll} = 3'b010;
            3'b100: {muxSel, regEnb, roll} = 3'b110;
            3'b101: {muxSel, regEnb, roll} = 3'b011;
            3'b110: {muxSel, regEnb, roll} = 3'b010;
            3'b111: {muxSel, regEnb, roll} = 3'b010;
        endcase


endmodule 
