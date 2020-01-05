`timescale 1ns / 1ns // `timescale time_unit/time_precision

module counter (enable, clk, reset, q, result);
	input enable, clk, reset; 
	output q, result; 
	
	T_FlipFlop T(.clk(clk), .enable(enable), .clear(reset), .Q(result)); 
	
	assign q = result & enable; 
endmodule 

module lab5part1(SW, KEY, HEX0, HEX1);
	input [1:0] SW; 
	input [0:0]KEY; 
	output [6:0] HEX0; 
	output [6:0] HEX1; 
	wire [7:0] hexIn; 
	wire [7:0] Con; 
	
	counter count1(SW[1], KEY[0], SW[0], Con[0], hexIn[0]); 
	counter count2(Con[0], KEY[0], SW[0], Con[1], hexIn[1]); 
	counter count3(Con[1], KEY[0], SW[0], Con[2], hexIn[2]); 
	counter count4(Con[2], KEY[0], SW[0], Con[3], hexIn[3]); 
	counter count5(Con[3], KEY[0], SW[0], Con[4], hexIn[4]); 
	counter count6(Con[4], KEY[0], SW[0], Con[5], hexIn[5]); 
	counter count7(Con[5], KEY[0], SW[0], Con[6], hexIn[6]); 
	counter count8(Con[6], KEY[0], SW[0], Con[7], hexIn[7]); 
	
	hexDecoder h0(.binIn(hexIn[3:0]), .hexOut(HEX0)); 
	hexDecoder h1(.binIn(hexIn[7:4]), .hexOut(HEX1));  
endmodule
