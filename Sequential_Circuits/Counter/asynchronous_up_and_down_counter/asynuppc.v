module Tff(clk,q,qbar,rst);
	input clk;
	output qbar;
	output reg q;
	input rst;
	assign qbar = ~q;
	always @(posedge clk or negedge rst) begin 
		if(!rst)
			q<=0;
		else
			q <= ~q;
	end
endmodule

module asynuppc(input clk,input rst,output [2:0]q,output [2:0]qbar);


	Tff G1(clk,q[0],qbar[0],rst);
	Tff G2(qbar[0],q[1],qbar[1],rst);
	Tff G3(qbar[1],q[2],qbar[2],rst);
	
endmodule


