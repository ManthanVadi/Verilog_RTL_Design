`include "full_adder.v"
`include "full_adder_cmos.v"

module full_adder_tb;
	reg A,B,C;
	wire Slogic,Scmos,Clogic,Ccmos;

	full_adder G1 (.A(A) , .B(B) , .C(C) , .sum(Slogic) , .carry(Clogic));
	full_adder_cmos G2 (.A(A) , .B(B) , .C(C) , .sum(Scmos) , .carry(Ccmos));

	initial begin
	$fsdbDumpvars();
	#10 A=1'bx;B=0;C=1;
	$display($time , "A= %b , B= %b , C= %b , Slogic= %b , Clogic= %b , Scmos= %b , Ccmos= %b",A,B,C,Slogic,Clogic,Scmos,Ccmos);
	#10 A=1;B=0;C=1;
	$display($time , "A= %b , B= %b , C= %b , Slogic= %b , Clogic= %b , Scmos= %b , Ccmos= %b",A,B,C,Slogic,Clogic,Scmos,Ccmos);
	#10 A=1;B=1;C=1;
	$display($time , "A= %b , B= %b , C= %b , Slogic= %b , Clogic= %b , Scmos= %b , Ccmos= %b",A,B,C,Slogic,Clogic,Scmos,Ccmos);
	#10 A=1;B=0;C=0;
	$display($time , "A= %b , B= %b , C= %b , Slogic= %b , Clogic= %b , Scmos= %b , Ccmos= %b",A,B,C,Slogic,Clogic,Scmos,Ccmos);
	#10 A=1;B=0;C=1;
	$display($time , "A= %b , B= %b , C= %b , Slogic= %b , Clogic= %b , Scmos= %b , Ccmos= %b",A,B,C,Slogic,Clogic,Scmos,Ccmos);
	#10 A=0;B=0;C=0;
	$display($time , "A= %b , B= %b , C= %b , Slogic= %b , Clogic= %b , Scmos= %b , Ccmos= %b",A,B,C,Slogic,Clogic,Scmos,Ccmos);
	#10 A=1;B=1'bx;C=1;
	$display($time , "A= %b , B= %b , C= %b , Slogic= %b , Clogic= %b , Scmos= %b , Ccmos= %b",A,B,C,Slogic,Clogic,Scmos,Ccmos);
	#10 A=0;B=1;C=1;
	$display($time , "A= %b , B= %b , C= %b , Slogic= %b , Clogic= %b , Scmos= %b , Ccmos= %b",A,B,C,Slogic,Clogic,Scmos,Ccmos);
	#10 $finish;

end
endmodule
