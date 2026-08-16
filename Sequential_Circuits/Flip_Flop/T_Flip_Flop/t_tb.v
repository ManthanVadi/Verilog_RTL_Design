`include "t.v"
module t_tb;
	reg t,clk,rst;
	wire q;

	t G1(t,clk,rst,q);

	initial begin 
	clk=0;
	forever #10 clk=~clk;
	end

	initial begin 
	$fsdbDumpvars();
	$monitor($time , " T=%b ,clk-%b , rst=%b , q=%b",t,clk,rst,q);
	#10 t=0;rst=0;
	#10 t=1;
	#10 t=0;
	#10 t=1;rst=1;
	#10 t=0;rst=0;
	#10 t=1;
	#10 $finish;
end
endmodule
