`timescale 1ns / 1ns // `timescale time_unit/time_precision

module mux2to1(x, y, s, f);

	input x, y, s; 
	output f; 
	
	assign f = s?y:x;
	
endmodule
