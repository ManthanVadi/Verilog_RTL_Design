`include "full_sub.v"
module full_sub_tb;
	reg A,B,C;
	wire Diff,Borrow;
	
// in () breackte to write the testbench parameter to pass.......
	full_sub G1(.A(A) , .B(B) , .C(C) , .difference(Diff) , .borrow(Borrow));

	initial begin
	$fsdbDumpvars();
	$monitor($time , "A=%b , B=%b , C=%b ,Diff=%b , Borrow=%b ",A,B,C,Diff,Borrow);
	A=1;B=1'bx;C=0;
	#10 A=0;B=0;C=0;
	#10 A=0;B=0;C=1;
	#10 A=0;B=1;C=0;
	#10 A=0;B=1;C=1;	
	#10 A=1;B=0;C=1;
	#10 A=1;B=1;C=0;
	#10 A=1;B=1;C=1;
	#10 $finish;
end
endmodule
