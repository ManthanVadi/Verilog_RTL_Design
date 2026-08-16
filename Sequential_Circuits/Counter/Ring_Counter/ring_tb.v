`include "ring.v"
module ring_tb;
	localparam N=4;
	reg clk ,rst;
	wire [N-1:0]q;

	ring #(N) G1(clk,rst,q);

	initial begin 
	clk=0;
	forever #10 clk=~clk;
	end

	initial begin 
	$fsdbDumpvars();
	$monitor($time , " clk=%b , rst=%b , q=%b",clk,rst,q);
	rst=0;
	#10 rst=1;
	#100 $finish;
end
endmodule
