`include "siso.v"
module siso_tb;
	reg x,clk,rst;
	wire [0:3]q;

	siso G1(x,clk,rst,q);

	initial begin 
	clk=0;
	forever #10 clk=~clk;
	end

	initial begin 
	$fsdbDumpvars();
	$monitor ($time , " x=%b , clk=%b , rst=%b , q[3]=%b",x,clk,rst,q[3]);
	#10 x=0;rst=1;
	#10 x=1;rst=0;
	#10 x=0;
	#10 x=1;
	#10 x=1;
	#10 x=1;
	#10 x=0;
	#10 x=1;
	#10 x=1;
	#10 $finish;
end
endmodule

