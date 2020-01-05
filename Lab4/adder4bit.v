

module adder4bit(A, B, Ci, S, C0);
	
	input [3:0]A,B; 
	input Ci; 
	output [3:0]S; 
	output C0; 
	
	wire Con1, Con2, Con3; 
	
	fullAdder u1(.a(A[0]),.b(B[0]),.ci(Ci),.s(S[0]),.c0(Con1)); 
	fullAdder u2(.a(A[1]),.b(B[1]),.ci(Con1),.s(S[1]),.c0(Con2));
	fullAdder u3(.a(A[2]),.b(B[2]),.ci(Con2),.s(S[2]),.c0(Con3));
	fullAdder u4(.a(A[3]),.b(B[3]),.ci(Con3),.s(S[3]),.c0(C0));
	
endmodule


module fullAdder(a, b, ci, s, c0); 

	input a,b,ci; 
	output s,c0;

	assign s = (ci&~a&~b) | (~ci&a&~b) |  (~ci&~a&b) | (ci&a&b);
	assign c0 = (ci&a&~b) | (ci&~a&b) |  (~ci&a&b) | (ci&a&b);
	
endmodule

