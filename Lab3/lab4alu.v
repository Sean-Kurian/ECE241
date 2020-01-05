`timescale 1ns / 1ns // `timescale time_unit/time_precision

module alu(SW, LEDR, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, KEY, sO);
	
	input [9:0]SW;
	input [2:0]KEY;
	reg [3:0] num1a;
	reg [3:0] num1b;
	integer i;
	
	//output cO; 
	output [4:0]sO; 
	output [6:0]HEX0; 
	output [6:0]HEX1; 
	output [6:0]HEX2;
	output [6:0]HEX3; 
	output [6:0]HEX4; 
	output [6:0]HEX5;	
	
	output reg [7:0]LEDR;

	wire carry1,carry2,carry3;	
	wire [3:0]A; 
	wire [3:0]B;
	
	assign A = SW[7:4]; 
	assign B = SW[3:0]; 
	
	
	fullAdder b0(A[0], B[0], 0, sO[0], carry1); 
	fullAdder b1(A[1], B[1], carry1, sO[1], carry2);
	fullAdder b2(A[2], B[2], carry2, sO[2], carry3);
	fullAdder b3(A[3], B[3], carry3, sO[3], sO[4]);
	
	
	
	always @(*)
	begin
		case(KEY[2:0])
			3'b000: LEDR = sO; 
			3'b001: LEDR = A + B; 
			3'b010:
				begin
					LEDR[3:0] = A ^~ B;
					LEDR[7:4] = ~(A & B);
				end
			3'b011:
				begin
					if (A | B)
						LEDR[7:0] = 8'b0001111;	
					else 
						LEDR[7:0] = 8'b0000000;
				end
			3'b100:
			begin 
				
					
						num1a = 0;
						for(i = 0; i <= 3; i = i + 1)
							if(A[i] == 1'b1)
								num1a = num1a + 1;
					
					
					
						num1b = 0;
						for(i = 0; i <= 3; i = i + 1)
							if(B[i] == 1'b1)
								num1b = num1b + 1;
						
					//if(num1a == 1 && num1b == 2)
					LEDR[7:0] = ((num1a == 1) && (num1b == 2)) ? 8'b11110000 : 8'b0;
					
				end
			3'b101:
			begin
					LEDR[7:4] = A;
					LEDR[3:0] = ~B; 
			end	
			
		   default: LEDR[7:0] = 8'b0000000;	
	   endcase
	end

	assign HEX1 = 7'b1000000;
	assign HEX3 = 7'b1000000;
	
	display4bit hex0(SW[3:0], HEX0);
	display4bit hex2(SW[7:4], HEX2);
	display4bit hex4(LEDR[3:0], HEX4);
	display4bit hex5(LEDR[7:4], HEX5);
	
endmodule

module display4bit (SW, HEX);
	input [3:0] SW;
	output [6:0] HEX;
	
	assign HEX[0] = ~SW[3]&~SW[2]&~SW[1]&SW[0]|~SW[3]&SW[2]&~SW[1]&~SW[0]|SW[3]&~SW[2]&SW[1]&SW[0]|SW[3]&SW[2]&~SW[1]&SW[0];
	assign HEX[1] = ~SW[3]&SW[2]&~SW[1]&SW[0]|~SW[3]&SW[2]&SW[1]&~SW[0]|SW[3]&~SW[2]&SW[1]&SW[0]|SW[3]&SW[2]&~SW[1]&~SW[0]|SW[3]&SW[2]&SW[1]&~SW[0]|SW[3]&SW[2]&SW[1]&SW[0];
	assign HEX[2] = ~SW[3]&~SW[2]&SW[1]&~SW[0]|SW[3]&SW[2]&~SW[1]&~SW[0]|SW[3]&SW[2]&SW[1]&~SW[0]|SW[3]&SW[2]&SW[1]&SW[0];
	assign HEX[3] = ~SW[3]&~SW[2]&~SW[1]&SW[0]|~SW[3]&SW[2]&~SW[1]&~SW[0]|~SW[3]&SW[2]&SW[1]&SW[0]|SW[3]&~SW[2]&SW[1]&~SW[0]|SW[3]&SW[2]&SW[1]&SW[0];
	assign HEX[4] = ~SW[3]&~SW[2]&~SW[1]&SW[0]|~SW[3]&~SW[2]&SW[1]&SW[0]|~SW[3]&SW[2]&~SW[1]&~SW[0]|~SW[3]&SW[2]&~SW[1]&SW[0]|~SW[3]&SW[2]&SW[1]&SW[0]|SW[3]&~SW[2]&~SW[1]&SW[0];
	assign HEX[5] = ~SW[3]&~SW[2]&~SW[1]&SW[0]|~SW[3]&~SW[2]&SW[1]&~SW[0]|~SW[3]&~SW[2]&SW[1]&SW[0]|~SW[3]&SW[2]&SW[1]&SW[0]|SW[3]&SW[2]&~SW[1]&SW[0];
	assign HEX[6] = ~SW[3]&~SW[2]&~SW[1]&~SW[0]|~SW[3]&~SW[2]&~SW[1]&SW[0]|~SW[3]&SW[2]&SW[1]&SW[0]|SW[3]&SW[2]&~SW[1]&~SW[0];
	
endmodule

module fullAdder(input a, b, ci, output s, c0); 

	assign s = (ci&~a&~b) | (~ci&a&~b) |  (~ci&~a&b) | (ci&a&b);
	assign c0 = (ci&a&~b) | (ci&~a&b) |  (~ci&a&b) | (ci&a&b);
	
endmodule