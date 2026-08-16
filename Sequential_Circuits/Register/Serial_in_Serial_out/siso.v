module siso (x,clk,rst,q);
	input x,clk,rst;
	output reg [0:3]q;

	always @(posedge clk or posedge rst) begin 
		if(rst)
		q<=0;
		else begin 
		q[3]<=q[2];
		q[2]<=q[1];
		q[1]<=q[0];
		q[0]<=x;
		end
	end
endmodule

