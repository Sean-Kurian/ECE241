
module flipflop (D, resetp, Clock, q);
input D,resetp, Clock;
output reg q;
	always @(posedge Clock)
	begin
		if (resetp == 1'b1)
			q <= 0; 
		else 
			q <= D; 
	end
endmodule 