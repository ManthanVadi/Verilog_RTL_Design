`include "sr.v"
module sr_tb;
	reg S,R,clk,rst;
	wire Q;
		
	sr G1(S,R,clk,rst,Q);
	initial begin
	clk=0;
	forever	 #5 clk=~clk ;
	end
	initial begin 
	$fsdbDumpvars();
	$monitor ($time , " S=%b , R=%b ,clk=%b , rst=%b , Q=%b",S,R,clk,rst,Q);
	#5 S=1;R=0;rst=0;
	#5 S=0;R=0;
	#5 S=1;R=0;
	#5 S=0;R=1;
	#5 S=0;R=0;rst=1;
	#5 S=0;R=1;rst=0;
	#5 S=1;R=0;
	#5 S=1;R=1;
	#5 S=0;R=1;
	#5 S=0;R=0;
	#10 $finish;
end
endmodule
	
