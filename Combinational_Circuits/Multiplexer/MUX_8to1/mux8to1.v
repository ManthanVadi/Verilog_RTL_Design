module mux8to1 (input [7:0]A,input [2:0]sel,output Y);
	assign Y=A[sel];
endmodule
