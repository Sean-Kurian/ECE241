
module D_FlipFlop (D, resetp, Clock, q);
input D,resetp, Clock;
output reg q;
	always @(posedge Clock)
	begin
		if (resetp == 1'b0)
			q <= 1'b0; 
		else 
			q <= D; 
	end
endmodule 