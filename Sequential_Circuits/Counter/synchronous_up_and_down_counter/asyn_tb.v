`include "asyn.v"
module asyn_tb;
	reg clk,rst;
	wire [3:0]Q;
	
	asyn G1(clk,rst,Q);
	
	initial begin 
	clk=0;
	forever #10 clk=~clk;
	end 
	initial begin 
	$fsdbDumpvars();
	$monitor ($time , " clk=%b , rst=%b , Q=%b",clk,rst,Q);
	#10 rst=0;
	#10 rst=1;
	#50 rst=0;
	#5 rst=1;
	#150 $finish;
end
endmodule
