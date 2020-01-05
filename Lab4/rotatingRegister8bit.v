
module rotatingRegister8bit(reset, clk, ParallelLoadn, RotateRight, ASRight, DATA_IN, Q); 
	input reset, clk, ParallelLoadn, RotateRight, ASRight; 
	input [7:0] DATA_IN; 
	output [7:0] Q; 
	wire [7:0] Qin; 
	wire AS; 

	mux2to1 ASMove(.x(Qin[7]),.y(Qin[0]),.s(ASRight),.f(AS)); 
	
	
	rotatingRegister1bit bit7 (.clk(clk),.reset(reset),.loadn(ParallelLoadn),.rotateRight(RotateRight),.dataIn(DATA_IN[7]),.left(Qin[AS]),.right(Qin[6]),.Q(Qin[7])); 
	rotatingRegister1bit bit6 (.clk(clk),.reset(reset),.loadn(ParallelLoadn),.rotateRight(RotateRight),.dataIn(DATA_IN[6]),.left(Qin[7]),.right(Qin[5]),.Q(Qin[6])); 
	rotatingRegister1bit bit5 (.clk(clk),.reset(reset),.loadn(ParallelLoadn),.rotateRight(RotateRight),.dataIn(DATA_IN[5]),.left(Qin[6]),.right(Qin[4]),.Q(Qin[5])); 
	rotatingRegister1bit bit4 (.clk(clk),.reset(reset),.loadn(ParallelLoadn),.rotateRight(RotateRight),.dataIn(DATA_IN[4]),.left(Qin[5]),.right(Qin[3]),.Q(Qin[4])); 
	rotatingRegister1bit bit3 (.clk(clk),.reset(reset),.loadn(ParallelLoadn),.rotateRight(RotateRight),.dataIn(DATA_IN[3]),.left(Qin[4]),.right(Qin[2]),.Q(Qin[3])); 
	rotatingRegister1bit bit2 (.clk(clk),.reset(reset),.loadn(ParallelLoadn),.rotateRight(RotateRight),.dataIn(DATA_IN[2]),.left(Qin[3]),.right(Qin[1]),.Q(Qin[2])); 
	rotatingRegister1bit bit1 (.clk(clk),.reset(reset),.loadn(ParallelLoadn),.rotateRight(RotateRight),.dataIn(DATA_IN[1]),.left(Qin[2]),.right(Qin[0]),.Q(Qin[1])); 
	rotatingRegister1bit bit0 (.clk(clk),.reset(reset),.loadn(ParallelLoadn),.rotateRight(RotateRight),.dataIn(DATA_IN[0]),.left(Qin[1]),.right(Qin[7]),.Q(Qin[0])); 



	

	assign Q = Qin; 

endmodule