

module hexDecoder (binIn,hexOut);
	input [3:0] binIn;
	output [6:0] hexOut;
	
	assign hexOut[0] = ~binIn[3]&~binIn[2]&~binIn[1]&binIn[0] | ~binIn[3]&binIn[2]&~binIn[1]&~binIn[0] | binIn[3]&~binIn[2]&binIn[1]&binIn[0] | binIn[3]&binIn[2]&~binIn[1]&binIn[0];
	assign hexOut[1] = ~binIn[3]&binIn[2]&~binIn[1]&binIn[0] | ~binIn[3]&binIn[2]&binIn[1]&~binIn[0] | binIn[3]&~binIn[2]&binIn[1]&binIn[0] | binIn[3]&binIn[2]&~binIn[1]&~binIn[0] | binIn[3]&binIn[2]&binIn[1]&~binIn[0] | binIn[3]&binIn[2]&binIn[1]&binIn[0];
	assign hexOut[2] = ~binIn[3]&~binIn[2]&binIn[1]&~binIn[0] | binIn[3]&binIn[2]&~binIn[1]&~binIn[0] | binIn[3]&binIn[2]&binIn[1]&~binIn[0] | binIn[3]&binIn[2]&binIn[1]&binIn[0];
	assign hexOut[3] = ~binIn[3]&~binIn[2]&~binIn[1]&binIn[0] | ~binIn[3]&binIn[2]&~binIn[1]&~binIn[0] | ~binIn[3]&binIn[2]&binIn[1]&binIn[0] | binIn[3]&~binIn[2]&binIn[1]&~binIn[0] | binIn[3]&binIn[2]&binIn[1]&binIn[0];
	assign hexOut[4] = ~binIn[3]&~binIn[2]&~binIn[1]&binIn[0] | ~binIn[3]&~binIn[2]&binIn[1]&binIn[0] | ~binIn[3]&binIn[2]&~binIn[1]&~binIn[0] | ~binIn[3]&binIn[2]&~binIn[1]&binIn[0] | ~binIn[3]&binIn[2]&binIn[1]&binIn[0] | binIn[3]&~binIn[2]&~binIn[1]&binIn[0];
	assign hexOut[5] = ~binIn[3]&~binIn[2]&~binIn[1]&binIn[0] | ~binIn[3]&~binIn[2]&binIn[1]&~binIn[0] | ~binIn[3]&~binIn[2]&binIn[1]&binIn[0] | ~binIn[3]&binIn[2]&binIn[1]&binIn[0] | binIn[3]&binIn[2]&~binIn[1]&binIn[0];
	assign hexOut[6] = ~binIn[3]&~binIn[2]&~binIn[1]&~binIn[0] | ~binIn[3]&~binIn[2]&~binIn[1]&binIn[0] | ~binIn[3]&binIn[2]&binIn[1]&binIn[0] | binIn[3]&binIn[2]&~binIn[1]&~binIn[0];
	
endmodule