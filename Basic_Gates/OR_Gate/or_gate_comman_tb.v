`include "or_gate_bool.v"
`include "or_gate_cmos.v"

module or_gate_comman_tb;
	reg A,B;
	wire Y1,Y2;

	or_gate_bool g1(.A(A) , .B(B) , .Y(Y1) );
	or_gate_cmos g2 (.A(A) , .B(B) , .Y(Y2) );

	initial begin 
	$fsdbDumpvars();
	$monitor ($time < "A= %b , B= %b , Y1= %b , Y2= %b", A, B ,Y1,Y2);
	#10 A=0 ; B=1;
	#10 A=1 ; B=0;
	#10 A=1 ; B=1;
	#10 A=0 ; B=0;
	#10 $finish;
end
endmodule
