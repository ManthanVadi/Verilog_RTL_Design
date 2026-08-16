`include "xor_gate_bool.v"
`include "xnor_gate_bool.v"
`include "xor_gate_cmos.v"
`include "xnor_gate_cmos.v"

module xor_xnor_tb;
	reg A,B;
	wire Y1,Y2,Y3,Y4;

	xor_gate_bool g1(.A(A) , .B(B) , .Y(Y1));
	xnor_gate_bool g2( .A(A) , .B(B) , .Y(Y2));
	xor_gate_cmos g3(.A(A) , .B(B) , .Y(Y3));
	xnor_gate_cmos g4(.A(A) , .B(B) , .Y(Y4));

	initial begin 
	$fsdbDumpvars();
	#10 A=1;B=0;
	$display($time , "A= %b , B= %b , Y1= %b , Y2= %b , Y3= %b , Y4= %b",A,B,Y1, Y2, Y3, Y4);
	#10 A=1;B=1;
	$display($time , "A= %b , B= %b , Y1= %b , Y2= %b , Y3= %b , Y4= %b",A,B,Y1, Y2, Y3, Y4);
	#10 A=0;B=0;
	$display($time , "A= %b , B= %b , Y1= %b , Y2= %b , Y3= %b , Y4= %b",A,B,Y1, Y2, Y3, Y4);
	#10 A=0;B=1;
	$display($time , "A= %b , B= %b , Y1= %b , Y2= %b , Y3= %b , Y4= %b",A,B,Y1, Y2, Y3, Y4);
	#10 A=1;B=1;
	$display($time , "A= %b , B= %b , Y1= %b , Y2= %b , Y3= %b , Y4= %b",A,B,Y1, Y2, Y3, Y4);
	#10 $finish;

end
endmodule
