`include "n_bit_fadder.v"
module n_bit_fadder_tb;
	localparam Size=16;
	reg [Size-1:0]A,B;
	reg Cin;
	wire [Size-1:0]Sum;
	wire Cout;

	n_bit_fadder #(Size)g1(A,B,Cin,Sum,Cout);

	initial begin 
	$fsdbDumpvars();
	$monitor($time ,"A=%b , B=%b , Cin=%b , Sum=%b , Cout=%b ",A,B,Cin,Sum,Cout);
	#20 A=16'h1234;B=16'h1227;Cin=1;
	#20 A=16'h8534;B=16'h2709;Cin=0;
	#20$finish;
end
endmodule
