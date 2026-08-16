`include "mux16bit.v"
module mux16bit_tb;
	reg [15:0]A[3:0];
	reg [1:0]sel;	
	wire [15:0]Y;

	mux16bit (A,sel,Y);
	initial begin 
	$fsdbDumpvars();
	$monitor ($time , "A[0]=%b , A[1]=%b , A[2]=%b , A[3]=%b ,sel=%b , Y=%b",A[0],A[1],A[2],A[3],sel,Y);
	A[0]=16'h1227;A[1]=16'habcd;A[2]=16'h0927;A[3]=16'ha27f;
	#10 sel=2'b00;
	#10 sel=2'b11;
	#10 sel=2'b10;
	#10 $finish;
end
endmodule
