`include "sequence1010.v"
module sequence1010_tb;
	reg clk,x;
	wire Y;

	sequence1010 G1(x,clk,Y);
	
	initial begin 
	clk=0;
	forever #10 clk=~clk;
	end
	initial begin 
	$fsdbDumpvars();
	$monitor ($time ," clk=%b , x=%b , Y=%b",clk,x,Y);
	#10 x=0;
	#20 x=1;
	#20 x=1;
	#20 x=0;
	#20 x=1;
	#20 x=0;
	#20 x=1;
	#20 x=0;
	#20 x=0;
	#20 x=1;
	#20 x=0;
	#20 x=1;
	#20 x=0;
	#20 $finish;
end
endmodule
