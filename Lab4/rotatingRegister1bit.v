
module rotatingRegister1bit(clk, reset, loadn, rotateRight, dataIn, left, right, Q);
	input clk, reset, loadn, rotateRight, dataIn, left, right; 
	output Q; 
	wire Con1, ConIn; 
	
	mux2to1 u1 (.s(rotateRight), .x(left), .y(right), .f(Con1)); 
	mux2to1 load (.s(loadn), .x(Con1), .y(dataIn), .f(ConIn)); 
	flipflop flipflop1(.D(ConIn), .resetp(reset),.Clock(clk), .q(Q)); 
	
endmodule
	