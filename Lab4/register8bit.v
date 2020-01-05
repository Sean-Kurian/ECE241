

module register8bit(D, Clock, Resetn, Q); //D = 8 bit input, Q = 8 bit output
	input [7:0]D; 
	input Clock, Resetn; //E is enable input, flip flops cannot change value if E = 0. If E = 1, register responds to clock normally.
	output reg[7:0] Q; 
	
	always @(posedge Clock)
		if (Resetn == 1'b0)
			Q<=0; 
		else
			Q<=D; 
endmodule 
	