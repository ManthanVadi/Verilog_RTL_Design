`include "mux8to1.v"
module mux32to1 (input [31:0]A,input [4:0]sel,output Y);
	assign Y= A[sel[4:0]]&(~sel[4]&~sel[3]) | A[sel[4:0]]&(~sel[4]&sel[3]) | A[sel[4:0]]&(sel[4]&~sel[3]) | A[sel[4:0]]&(sel[4]&sel[3]);
endmodule
