`include "traffic_light.v"
module traffic_light_tb;
	reg clk;
	wire [2:0]light;

	traffic_light G1(clk,light);

	initial begin 
	clk=0;
	forever #10 clk=~clk;
	end

	initial begin 
	$fsdbDumpvars();
	$monitor ($time , " clk=%b , GYR=%b",clk,light);
	#100 $finish;
end
endmodule
	
