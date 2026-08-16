module mux4to1 (input [3:0]A,input [1:0]sel ,output Y);
	reg Y;
	always @(*)
		begin
		case(sel)
		2'b00 : Y=A[0];
		2'b01 : Y=A[1];
		2'b10 : Y=A[2];
		2'b11 : Y=A[3];
		endcase
		end
endmodule

module mux16to1 (input [15:0]A,input [3:0]sel , output Y);
	wire [3:0]t;
	mux4to1 G1(A[3:0], sel[1:0],t[0]);
	mux4to1 G2(A[7:4], sel[1:0],t[1]);
	mux4to1 G3(A[11:8], sel[1:0],t[2]);
	mux4to1 G4(A[15:12], sel[1:0],t[3]);

	mux4to1 G5(t,sel[3:2],Y);

endmodule
