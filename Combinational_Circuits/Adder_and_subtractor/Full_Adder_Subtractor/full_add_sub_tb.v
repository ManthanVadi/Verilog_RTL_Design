`include "full_add_sub.v"

module full_add_sub_tb;
	reg A,B,C,con;
	wire S,Cout;

	full_add_sub G1( .A(A) , .B(B) , .C(C) , .con(con) , .S(S) , .Cout(Cout) );

	initial begin 
	$fsdbDumpvars();

	#10 A=1;B=0;C=1;con=0;
	$display($time , "A=%b , B=%b , C=%b , Control=%b , Sum=%b , Carry=%b",A,B,C,con,S,Cout);
	#10 A=1;B=1;C=1;con=1;
	$display($time , "A=%b , B=%b , C=%b , Control=%b , Diff=%b , Borrow=%b",A,B,C,con,S,Cout);
	#10 A=1;B=0;C=0;con=0;
	$display($time , "A=%b , B=%b , C=%b , Control=%b , Sum=%b , Carry=%b",A,B,C,con,S,Cout);
	#10 A=1;B=1;C=0;con=0;
	$display($time , "A=%b , B=%b , C=%b , Control=%b , Sum=%b , Carry=%b",A,B,C,con,S,Cout);
	#10 A=1;B=1;C=0;con=1;
	$display($time , "A=%b , B=%b , C=%b , Control=%b , Diff=%b , Borrow=%b",A,B,C,con,S,Cout);
	#10 A=0;B=0;C=1;con=1;
	$display($time , "A=%b , B=%b , C=%b , Control=%b , Diff=%b , Borrow=%b",A,B,C,con,S,Cout);
	#10 A=0;B=1;C=1;con=0;
	$display($time , "A=%b , B=%b , C=%b , Control=%b , Sum=%b , Carry=%b",A,B,C,con,S,Cout);
	#10 A=1;B=0;C=1;con=1;
	$display($time , "A=%b , B=%b , C=%b , Control=%b , Diff=%b , Borrow=%b",A,B,C,con,S,Cout);
	#10 A=1;B=0;C=0;con=0;
	$display($time , "A=%b , B=%b , C=%b , Control=%b , Sum=%b , Carry=%b",A,B,C,con,S,Cout);

	#10$finish;
end
endmodule

