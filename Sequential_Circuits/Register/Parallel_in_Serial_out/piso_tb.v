`include "piso.v"
module piso_tb;
	reg [0:3]data;
	reg clk,rst,control;
	wire Y;

	piso G1(data,clk,rst,control,Y);

	initial begin 
	clk=0;
	forever #10 clk=~clk;
	end

	initial begin 
	$fsdbDumpvars();
	$monitor ($time , " data =%b , clk=%b , rst=%b , control=%b , Y=%b",data,clk,rst,control,Y);
	rst=1;
	#10 data=4'b1010;rst=0;control=1;
	#20 control=0;
	#20 control=1;
	#20 control=1;
	#20 data=4'b1110;control=1;
	#20 control=0;
	#20 control=1;
	#20 control=1;
	#10 $finish;
end
endmodule
