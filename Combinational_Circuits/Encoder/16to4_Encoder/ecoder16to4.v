`include "encoder4to2.v"
module encoder16to4(input [15:0]A,input E,output [3:0]Y);
	
	wire [7:0]t;
	encoder4to2 G1(A[3:0] ,E, t[1:0]);
	encoder4to2 G2(A[7:4] ,E, t[3:2]);
	encoder4to2 G3(A[11:8] ,E, t[5:4]);
	encoder4to2 G4(A[15:12] ,E, t[7:6]);

	encoder4to2 G5(t[3:0], E , Y[1:0]);
	encoder4to2 G6(t[7:4],E,Y[3:2]);
endmodule
