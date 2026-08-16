`include "asynuppc.v"
module asynup_tb;
	reg clk,rst;
	wire [2:0]q,qbar;
	
	asynuppc G1(clk,rst,q,qbar);

	initial begin 
	clk=0;
	forever #10 clk=~clk;
	end

	initial begin 
	$fsdbDumpvars();
	$monitor ($time ," clk=%b , rst=%b ,q=%b , qbar=%b",clk,rst,q,qbar);
	rst=0;
	#10 rst=1;
	#300 $finish;
end
endmodule
