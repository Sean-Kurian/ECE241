`timescale 1ns / 1ns // `timescale time_unit/time_precision

module fullAdder(input a, b, ci, output s, c0); 

	assign s = (ci&~a&~b) | (~ci&a&~b) |  (~ci&~a&b) | (ci&a&b);
	assign c0 = (ci&a&~b) | (ci&~a&b) |  (~ci&a&b) | (ci&a&b);
	
endmodule

module adder4bit(SW,LEDR);
	
	input [9:0]SW; 
	output [9:0]LEDR; 
	
	wire Con1, Con2, Con3; 
	
	fullAdder u1(.a(SW[4]),.b(SW[0]),.ci(SW[8]),.s(LEDR[0]),.c0(Con1)); 
	fullAdder u2(.a(SW[5]),.b(SW[1]),.ci(Con1),.s(LEDR[1]),.c0(Con2));
	fullAdder u3(.a(SW[6]),.b(SW[2]),.ci(Con2),.s(LEDR[2]),.c0(Con3));
	fullAdder u4(.a(SW[7]),.b(SW[3]),.ci(Con3),.s(LEDR[3]),.c0(LEDR[9]));
	
endmodule

