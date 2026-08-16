`include "gcddatapath.v"
`include "gcddatacontrol.v"

module gcd_tb;

	reg clk,start,reset;
	reg [15:0] data_in;

	wire lda,ldb,sel1,sel2,sel_in,done,lt,gt,eq;
	
	gcddatapath GD(lda,ldb,sel1,sel2,sel_in,data_in,clk,gt,lt,eq);
	gcddatacontrol GC(lda,ldb,sel1,sel2,sel_in,done,clk,lt,gt,eq,start,reset);

	initial begin
	clk=0;
	forever #5 clk=~clk;
	end

	initial begin 
	$fsdbDumpvars();
	$monitor ($time , " clk=%b , A=%d , B=%d , sub=%d , done=%b",clk,GD.aout,GD.bout,GD.subout,done);
	#2 reset =0;start=0;
	#2 reset=1;start=1; data_in=4371;
	#10 data_in=1081;
	#300 $finish;
end
endmodule
