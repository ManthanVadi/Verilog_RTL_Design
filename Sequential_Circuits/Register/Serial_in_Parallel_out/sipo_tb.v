`include "sipo.v"
module sipo_tb;
	reg x,clk,rst;
	wire [0:3]q;

	sipo G1(x,clk,rst,q);

	initial begin 
	clk=0;
	forever #10 clk=~clk;
	end

	initial begin 
	$fsdbDumpvars();
	$monitor ($time , " x=%b , clk=%b , rst=%b , q0=%b , q1=%b , q2=%b, q3=%b",x,clk,rst,q[0],q[1],q[2],q[3]);
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

