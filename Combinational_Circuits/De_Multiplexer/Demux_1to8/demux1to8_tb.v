`include "demux1to8.v"
module demux1to8_tb;
	reg A;
	reg [2:0]sel;
	wire [7:0] Y;

	demux1to8 G1(A,sel,Y);

	initial begin 
	$fsdbDumpvars();
	$monitor($time , "A=%b , sel=%b ,Y=%b ",A,sel,Y);
	#10 A=1;sel=3'b100;
	#10 A=0;sel=3'b010;
	#10 A=1;sel=3'b110;
	#10 A=0;sel=3'b011;
	#10 A=0;sel=3'b001;
	#10 A=1;sel=3'b111;
	#10 $finish;
end
endmodule
