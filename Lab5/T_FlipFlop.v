`timescale 1ns / 1ns // `timescale time_unit/time_precision

module T_FlipFlop(clk, clear, enable, Q);
	input clk, clear, enable; 
	output Q; 
	
	wire con1; 
	
	assign con1 = enable ^ Q; 
	D_FlipFlop D(.D(con1),.resetp(clear), .Clock(clk), .q(Q)); 
	
endmodule
