module asyndown(input clk,input rst,output reg [3:0]Q);
	always @(posedge clk or negedge rst) begin 
		if(!rst)
		Q<=0;
		else
		Q <= Q-1;
	end
endmodule
