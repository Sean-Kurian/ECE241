`timescale 1ns / 1ns // `timescale time_unit/time_precision

module lab5part3(input [1:0]KEY, input [2:0]SW, input CLOCK_50, output reg [0:0]LEDR);
   reg [12:00]Q;
	reg [12:0]data;
	reg Enable;
	reg [26:0]rate;
	always@(posedge CLOCK_50)begin //WHICH LETTER
			case(SW)
				3'b000: data = 13'b0000000000101; //I
				3'b001: data = 13'b1011101110111; //J
				3'b010: data = 13'b0000001110111; //K
				3'b011: data = 13'b0000101110101; //L
				3'b100: data = 13'b0000001110111; //M
				3'b101: data = 13'b0000000011101; //N
				3'b110: data = 13'b0011101110111; //O
				3'b111: data = 13'b0010111011101; //P
			endcase
	end
	
	always@(posedge CLOCK_50) begin
		if(~KEY[0]) //RESET TO 0
			rate <=0;
		else if(rate == 27'b000000000000000000000000000) 
		begin // WHEN COUNTDOWN REACHES 0 
			Enable = 1;
			rate = 'd24999999;//27'b010111110101111000001111111; //LOAD THE VALUE OF RATEDIVIDER
		end
		else 
		begin	
			rate = rate-1; //COUNT DOWN
			Enable = 0; 
		end
	end	
	
	
	always@(posedge CLOCK_50, negedge KEY[0]) 
	begin
		if(~KEY[0])
			LEDR[0]=0; 
		else if(KEY[0] && KEY[1])
		begin//IF NOTHING IS PRESSED, EVEN FOR A FRACTION OF A SECOND
			Q <= data;
			end
			
		else if (KEY[0] && ~KEY[1] && Enable)
		begin //KEEP PRESSING KEY[1]
			Q[12] <= 1'b0;
			Q[11] <= Q[12];
			Q[10] <= Q[11];
			Q[9] <= Q[10];
			Q[8] <= Q[9];
			Q[7] <= Q[8];
			Q[6] <= Q[7];
			Q[5] <= Q[6];
			Q[4] <= Q[5];
			Q[3] <= Q[4];
			Q[2] <= Q[3];
			Q[1] <= Q[2];
			Q[0] <= Q[1];
			LEDR[0] <= Q[0];
		end
	
	end
	
endmodule
