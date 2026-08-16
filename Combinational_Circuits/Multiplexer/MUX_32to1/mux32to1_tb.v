`include "mux32to1.v"

module mux_32to1_tb;
	reg [31:0]A;
	reg [4:0]sel;
	wire Y;

	mux32to1 G1(A,sel,Y);

	initial begin 
	$fsdbDumpvars();
	$monitor ($time , "A=%b , sel=%b , Y=%b",A,sel,Y);
	#10 A=32'h12270965 ; sel=5'b01100;
	#10 A=32'habcdef22 ; sel=5'b10110;
	#10 A=32'h1227abc5 ; sel=5'b11011;
	#10 A=32'h45892f65 ; sel=5'b01001;
	#10 $finish;
end
endmodule
