`include "nor_gate_bool.v"
`include "nor_gate_cmos.v"

module nor_gate_comman_tb;
	reg A,B;
	wire Y1,Y2;

	nor_gate_bool g1(.A(A) , .B(B) , Y(Y1) );
	nor_gate_cmos g2(.A(A) , .B(B) , Y(Y2) );

	initial begin 
	$fsdbDumpvars();
	$monitor ($time < "A= %b , B= %b , Y= %b", A, B ,Y);
	#10 A=1; B=1;
	#10 A=1 ; B=0;
	#10 A=0 ; B=1;
	#10 A=0 ; B=0;
	#10 $finish;
end
endmodule

