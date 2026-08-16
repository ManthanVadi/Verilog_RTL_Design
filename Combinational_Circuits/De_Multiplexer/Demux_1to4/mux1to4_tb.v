`include "demux1to4.v"
module mux1to4_tb;
	reg A;
	reg [3:0] sel;
	wire [3:0]Y;
	
	demux1to4 G1(A,sel,Y);

	initial begin 
	$fsdbDumpvars();
	$monitor ($time , "A=%b , sel = %b ,Y=%b",A,sel,Y );
	#10 A=1;sel=4'b1010;
	#10 A=0;sel=4'b1110; 
	#10 A=1;sel=4'b0010; 
	#10 A=1;sel=4'b0110; 
	#10 A=0;sel=4'b0011;
	#10 $finish;
end
endmodule  	
