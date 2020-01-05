`timescale 1ns / 1ns // `timescale time_unit/time_precision

module display4bit(input x0, x1, x2, x3, output s0, s1, s2, s3, s4, s5, s6);
	
	assign s0 = (~x0&~x1&~x2&x3) | (~x0&x1&~x2&~x3) | (x0&~x1&x2&x3) | (x0&x1&~x2&x3);
	assign s1 = (~x0&x1&~x2&x3)| (~x0&x1&x2&~x3)| (x0&~x1&x2&x3)| (x0&x1&~x2&~x3)| (x0&x1&x2&~x3)| (x0&x1&x2&x3);
	assign s2 = (~x0&~x1&x2&~x3)| (x0&x1&~x2&~x3)| (x0&x1&x2&~x3)| (x0&x1&x2&x3);
	assign s3 = (~x0&~x1&~x2&x3)| (~x0&x1&~x2&~x3)| (~x0&x1&x2&x3)| (x0&~x1&x2&~x3)| (x0&x1&x2&x3);
	assign s4 = (~x0&~x1&~x2&x3)| (~x0&~x1&x2&x3)| (~x0&x1&~x2&~x3)| (~x0&x1&~x2&x3)| (~x0&x1&x2&x3)| (x0&~x1&~x2&x3);
	assign s5 = (~x0&~x1&~x2&x3)| (~x0&~x1&x2&~x3)| (~x0&~x1&x2&x3)| (~x0&x1&x2&x3)| (x0&x1&~x2&x3);
	assign s6 = (~x0&~x1&~x2&~x3)| (~x0&~x1&~x2&x3)| (~x0&x1&x2&x3)| (x0&x1&~x2&~x3);
	
endmodule 

module hexDecoder(SW,HEX0); 
	input [9:0] SW; 
	output [6:0]HEX0; 
	
	display4bit u1 (.x0(SW[0]), .x1(SW[1]), .x2(SW[2]), .x3(SW[3]), .s0(HEX0[0]), .s1(HEX0[1]), .s2(HEX0[2]), .s3(HEX0[3]), .s4(HEX0[4]), .s5(HEX0[5]), .s6(HEX0[6])); 

endmodule