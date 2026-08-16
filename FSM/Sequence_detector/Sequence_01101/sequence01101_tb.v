`include "sequence01101.v"
module sequence01101_tb;
	reg x,rst,clk;
	wire Y;

	sequence01101 G1(x,rst,clk,Y);

	initial begin 
	clk=0;
	forever #5 clk=~clk;
	end

	initial begin 
	$fsdbDumpvars();
	$monitor ($time , " x=%b , clk=%b , rst=%b , Y=%b , ps=%b , ns=%b",x,clk,rst,Y,G1.ps,G1.ns);
	rst=0;
	#4 x=0;rst=1;
	#10 x=1;
	#10 x=1;
	#10 x=0;
	#10 x=1;
	#10 x=1;
	#10 x=0;
	#10 x=1;
	#10 x=0;
	#10 x=1;
	#10 x=1;
	#10 x=0;
	#10 x=0;
	#10 x=1;
	#10 x=1;
	#10 x=0;
	#10 x=1;
	#10 x=0;
	#10 x=0;
	#10 x=1;
	#10 x=1;
	#10 x=0;
	#10 x=1;
	#10 $finish ;
end
endmodule
	
