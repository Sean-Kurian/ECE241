

module alu(A, register, keys, result); 
	
	input [3:0] A; 
	input [7:0] register; 
	input [2:0] keys;
	
	output reg [7:0] result; 
	reg [3:0] num1a;
	reg [3:0] num1b;
	integer i;
	
	wire[3:0] B; 
	wire[3:0] sum4bit; 
	assign B = register[3:0]; 
	
	wire carry;
	adder4bit u1(.A(A), .B(B), .Ci(0), .S(sum4bit), .C0(carry)); 
	
	always @(*)
	begin
		case (~keys[2:0])
			3'b000: result = {3'b000, carry, sum4bit}; //concatenates 000,the carryout, and then sum4bit -> result looks like 000xxxxx
			3'b001: result = A + B; 
			3'b010:
			begin
				result[3:0] = A ^~ B;
				result[7:4] = ~(A & B);
			end
			3'b011: result = (A|B) ? 8'b00001111 : 8'b00000000; 
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
							
				result = ((num1a == 1) && (num1b == 2)) ? 8'b11110000 : 8'b00000000;
			end
				
			3'b101:
			begin
					result[7:4] = A;
					result[3:0] = ~B; 
			end	
			3'b110: result = register; 
			default: result = register; 
		endcase
	end
endmodule
