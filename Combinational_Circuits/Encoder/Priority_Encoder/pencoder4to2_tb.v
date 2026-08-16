`include "pencoder4to2.v"
module pencoder4to2_tb;	
	reg [3:0]A;
	reg E;
	wire [1:0] Y;


	pencoder4to2 Gn(A,E,Y);

	initial begin 
	$fsdbDumpvars();
	$monitor ($time , " A=%b , E=%b , Y=%b ",A,E,Y);
	E=1;
	#10 A=4'b0001;
	#10 A=4'b1010;
	#10 A=4'b0110;
	#10 $finish;
end
endmodule
