module lab7part1 (SW, KEY, HEX0, HEX2, HEX4, HEX5);
	input [9:0] SW; 
	input [3:0] KEY; 
	output [6:0] HEX0, HEX2, HEX4, HEX5;
	
	wire[3:0] dataOut; 
	
	ram32x4 r1(.data(SW[3:0]), .address(SW[8:4]), .wren(SW[9]), .clock(KEY[0]), .q(dataOut)); 
	
	hexDecoder h0(.binIn(dataOut), .hexOut(HEX0)); 
	hexDecoder h2(.binIn(SW[3:0]), .hexOut(HEX2)); 
	hexDecoder h4(.binIn(SW[7:4]), .hexOut(HEX4)); 
	hexDecoder h5(.binIn({3'b0, SW[8]}), .hexOut(HEX5)); 
endmodule 