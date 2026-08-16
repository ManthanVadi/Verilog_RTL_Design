module sipo (x,clk,rst,q);
	input x,clk,rst;
	output reg [0:3]q;

	always @(posedge clk or posedge rst) begin 
		if(rst)
		q<=0;
		else begin 
		q[1:3] <= q[0:2];
		q[0] <=x;
		end
	end
endmodule
