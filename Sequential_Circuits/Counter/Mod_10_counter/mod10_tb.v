`include "mod10.v"
module mod10_tb;
	reg clk,rst;
	wire [3:0]q;

	mod10 G1(clk,rst,q);

	initial begin 
	clk=0;
	forever #10 clk=~clk;
	end

	initial begin 
	$fsdbDumpvars();
	$monitor ($time , " clk=%b , rst=%b , q=%b",clk,rst,q);
	rst=0;
	#10 rst=1;
	#300 $finish;
end
endmodule
