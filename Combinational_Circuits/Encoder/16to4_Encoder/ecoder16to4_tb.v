`include "ecoder16to4.v"
module encoder16to4_tb;
	reg [15:0]A;
	reg E;
	wire [3:0]Y;

	encoder16to4 Gn(A,E,Y);

	initial begin 
	$fsdbDumpvars();
	$monitor($time , " A=%b , E=%b ,Y=%b",A,E,Y);
	E=1;
	#10 A=16'h0080;
	#10 A=16'h0001;
	#10 A=16'h0200;
	#10 A=16'h4000;
	#10 A=16'h0000;E=0;
	#10 A=16'h2271;E=1;
	#10 $finish;
end
endmodule
