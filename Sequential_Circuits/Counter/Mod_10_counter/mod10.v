module mod10 (input clk,input rst , output reg [3:0]q);
	always @ (posedge clk or negedge rst) begin 
		if((!rst) | (q[1]&q[3]) )
			q <= 0;
		else
			q <= q+1;
	end
endmodule
