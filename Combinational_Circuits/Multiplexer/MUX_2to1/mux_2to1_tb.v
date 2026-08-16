`include "mux_2to1.v"

module mux_2to1_tb;
	reg A,B,sel;
	wire Y;

	mux_2to1 G1(A,B,sel,Y);

	initial begin
	$fsdbDumpvars();
	$monitor ($time ,"A=%b , B=%b , sel=%b , Y=%b",A,B,sel,Y);
	#10 A=1;B=0;sel=0;
	#10 A=1;B=1;sel=1;
	#10 A=0;B=0;sel=0;
	#10 $finish;
end
endmodule


