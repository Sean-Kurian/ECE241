`timescale 1ns / 1ns // `timescale time_unit/time_precision

module lab4part3(SW, LEDR, KEY);
	input [9:0] SW;
	input [3:0] KEY; 
	output [7:0] LEDR; 
	
	rotatingRegister8bit u1(.reset(SW[9]), .clk(KEY[0]), .ParallelLoadn(KEY[1]), .ASRight(KEY[3]), .DATA_IN(SW[7:0]), .RotateRight(KEY[2]), .Q(LEDR[7:0])); 
	
endmodule 	