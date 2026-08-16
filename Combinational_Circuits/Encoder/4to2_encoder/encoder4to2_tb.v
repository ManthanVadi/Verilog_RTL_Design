`include "encoder4to2.v"
module encoder4to2_tb;
	reg [3:0]A;
	reg E;
	wire [1:0] Y;

	encoder4to2 G1(A,E,Y);
	initial begin 
	$fsdbDumpvars();
	$monitor ($time , "A=%b ,E=%b ,Y=%b ",A,E,Y);
	#10 A=4'b1000;E=1;
	#10 A=4'b0010;
	#10 A=4'b0100;
	#10 A=4'b0001;E=0;
	#10 A=4'b0011;E=1;
	#10 $finish;
end
endmodule
