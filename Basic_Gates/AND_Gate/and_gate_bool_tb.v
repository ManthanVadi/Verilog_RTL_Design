`include "and_gate_bool.v"
`include "and_gate_cmos.v"
module and_gate_bool_tb;
	reg A,B;
	wire Y1,Y2;

	and_gate_bool G1(.A(A) , .B(B) , .Y(Y1));
	and_gate_cmos G2(.A(A) , .B(B) , .Y(Y2));

	initial begin 
	$fsdbDumpvars();
	$monitor($time , "A = %b , B= %b , Y= %b ",A,B,Y);
	#10 A=1;B=0;
	#10 A=1;B=1;
	#10 A=0;B=1;
	#10 A=0;B=0;
	#10 A=1;B=0;
	#10 $finish;

end
endmodule
