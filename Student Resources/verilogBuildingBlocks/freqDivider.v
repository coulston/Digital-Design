//------------------------------------------
//	Name:	Chris Coulston
// Date:	Spring 2020
// File:	freqDiv
//	Purp:	
//------------------------------------------

module freqDivider(clk, rst, slowClk);

	parameter bitWidth = 4;
	parameter rollOver = 4'd9;
		
	input 		clk,rst;
	output reg 	slowClk;
	reg [bitWidth-1:0] 	counter;

	always @(posedge clk or negedge rst)
		begin
			if(!rst)
				begin
					counter <= {bitWidth{1'b0}};
					slowClk <= 1'b0;
				end
			else
				if(counter == rollOver)
					begin
						counter <= {bitWidth{1'b0}};
						slowClk <= ~slowClk;
					end
				else
					begin
						counter<=counter+1;
				end
		 end
endmodule