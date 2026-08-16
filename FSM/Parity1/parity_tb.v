`include "parity1.v"
module parity_tb;
	reg x,clk,rst;
	wire Y;

	parity1 G1(x,rst,clk,Y);

	initial begin 
	clk=0;
	forever #10 clk=~clk;
	end
	
	initial begin 
	$fsdbDumpvars();
	$monitor ($time , " x=%b , clk=%b , rst=%b , Y=%b",x,clk,rst,Y);
	rst=0;
	#10 x=0;rst=1;
	#20 x=1;
	#20 x=0;
	#20 x=1;
	#20 x=1;
	#20 x=0;
	#20 x=1;
	#20 x=0;
	#20 x=0;
	#20 x=1;
	#20 $finish;
end
endmodule
