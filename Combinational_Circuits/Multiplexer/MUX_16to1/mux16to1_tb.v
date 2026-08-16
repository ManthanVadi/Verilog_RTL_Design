`include "mux16to1.v"
module mux16to1_tb;
	reg [15:0]A;
	reg [3:0]sel;
	wire Y;

	mux16to1 G1(A,sel,Y);
	initial begin
	$fsdbDumpvars();
	$monitor($time ,"A=%b , Sel=%b , Y=%b",A,sel,Y);
	#10 A=16'h1254;sel=4'ha; 
	#10 A=16'h0617;sel=4'h2; 
	#10 A=16'h1212;sel=4'h6; 
	#10 A=16'h2709;sel=4'h9; 
	#10 A=16'h1227;sel=4'he;
	#10 $finish;
end
endmodule 
