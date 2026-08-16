`include "full_add_sub.v"
module nbitfulladdsub #(parameter SIZE=16)(input [SIZE-1:0]A,input [SIZE-1:0]B,input cin,input con,output
 [SIZE-1:0]S,output C);

	wire [SIZE:0]c;
	assign c[0]=cin;
	genvar i;
	generate 
		for(i=0;i<SIZE;i=i+1)
		begin : nloops
		full_add_sub G1(A[i],B[i],c[i],con,S[i],c[i+1]);
		end
	endgenerate
	assign C=c[SIZE];
endmodule
