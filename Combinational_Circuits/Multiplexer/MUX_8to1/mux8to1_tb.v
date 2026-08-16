`include "mux8to1.v"
module mux8to1_tb;
	reg [7:0]A;
	reg [2:0]sel;
	wire Y;

	mux8to1 G1(A,sel,Y);

	initial begin 
	$fsdbDumpvars();
	$monitor ($time , "A=%b , sel=%b , Y=%b",A,sel,Y);
	#10 A=8'h23;sel=3'b011;
	#10 A=8'h27;sel=3'b010;
	#10 A=8'h33;sel=3'b110;
	#10 A=8'h12;sel=3'b100;
	#10 A=8'h07;sel=3'b001;
	#10 A=8'h09;sel=3'b000;
	#10 A=8'h22;sel=3'b111;
	#10 $finish;
end
endmodule
