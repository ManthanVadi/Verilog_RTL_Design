`include "jk.v"
module jk_tb;
	reg j,k,clk,reset;
	wire q;

	jk G1(j,k,clk,reset,q);
	initial begin 
	clk =0;
	forever #10 clk=~clk;
	end
	initial begin 
	$fsdbDumpvars();
	$monitor($time , " j=%b , k=%b , clk=%b , reset=%b , q=%b",j,k,clk,reset,q);
	#10 j=1;k=0;reset=0;
	#10 j=0;k=0;
	#10 j=1;k=1;
	#10 j=1;k=0;
	#10 j=0;k=1;reset=1;
	#10 j=0;k=0;reset=0;
	#10 j=1;k=1;
	#10 $finish;
end
endmodule
