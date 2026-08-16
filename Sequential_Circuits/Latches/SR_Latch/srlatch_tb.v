`include "srlatch.v"
module srlatch_tb;
	reg s,r;
	wire q;

	srlatch(s,r,q);

	initial begin 
	$fsdbDumpvars();
	$monitor ($time ," S=%b , R=%b ,Q=%b",s,r,q);
	#10 s=1;r=0;
	#10 s=0;r=0;
	#10 s=1;r=1;
	#10 s=1;r=0;
	#10 s=0;r=0;
	#10 $finish;
end
endmodule
