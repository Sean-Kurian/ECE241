

module lab4part2(SW, KEY, LEDR, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5); //D = 8 bit input, Q = 8 bit output
	input [9:0]SW; 
	input [3:0] KEY; 
	output [7:0] LEDR; 
	output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5; 
	wire [7:0] ALUOut;
	wire [7:0] regOut; 
	
	alu aluModule(.A(SW[3:0]),.register(regOut), .keys(KEY[3:1]), .result(ALUOut)); 
	
	assign LEDR = regOut; 
	
	register8bit regModule(.D(ALUOut), .Clock(KEY[0]), .Resetn(SW[9]), .Q(regOut)); 
	
	hexDecoder h0(.binIn(SW[3:0]), .hexOut(HEX0)); 
	hexDecoder h1(.binIn(4'b0000), .hexOut(HEX1)); 
	hexDecoder h2(.binIn(4'b0000), .hexOut(HEX2)); 
	hexDecoder h3(.binIn(4'b0000), .hexOut(HEX3)); 
	hexDecoder h4(.binIn(regOut[3:0]), .hexOut(HEX4)); 
	hexDecoder h5(.binIn(regOut[7:4]), .hexOut(HEX5));
 	
endmodule 
	