`include "d.v"
module d_tb;
	reg d,clk,rst;
	wire q;

	d G1(d,clk,rst,q);

	initial begin 
	clk=0;
	forever #10 clk=~clk;
	end
	initial begin 
	$fsdbDumpvars();
	$monitor ($time , " D=%b , clk =%b , rst=%b , q=%b",d,clk,rst,q);
	#10 d=1;rst=0;
	#10 d=0;
	#10 d=1;
	#10 d=0;
	#10 d=1'bx;
	#10 d=1;
	#10 $finish;
end
endmodule
