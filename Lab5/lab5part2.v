`timescale 1ns / 1ns // `timescale time_unit/time_precision

module lab5part2(input CLOCK_50, input [1:0]SW, input [0:0]KEY, output [6:0]HEX0);
	reg [3:0]q;
	initial q = 4'b0000;
	reg [26:0]RateDivider;
	reg [26:0]rate;
	reg Enable;
	initial rate=27'b000000000000000000000000000;
	
	always@(*)
		case (SW)
		2'b00: RateDivider = 27'b000000000000000000000000000; //FULL 0
		2'b10: RateDivider = 27'b010111110101111000001111111; //2HZ  249999999
		2'b01: RateDivider = 27'b001011111010111100000111111; //1HZ  
		2'b11: RateDivider = 27'b101111101011110000100000000; //0.5HZ
		endcase
	
	always@(posedge CLOCK_50) begin
		if(~KEY[0]) //if KEY[0] IS PRESSED DOWN, THEN RESET TO 0
			rate <=0;
		else if(KEY[0] && rate==27'b000000000000000000000000000) 
		
		begin // WHEN COUNTDOWN REACHES 0 
			Enable = 1;
			rate = RateDivider; //LOAD THE VALUE OF RATEDIVIDER
		end
		
		else 
		begin	
			rate = rate-1;
			Enable = 0;
			
		end
	end
	
	always@(posedge CLOCK_50)
		begin
			if(~KEY[0]) //WHEN KEY[0] IS PRESSED DOWN
				q<=0;
			else if(KEY[0] && Enable)
				q<= q + 1;
		end
		hexDecoder h0(.binIn(q),   .hexOut(HEX0));
endmodule





	
