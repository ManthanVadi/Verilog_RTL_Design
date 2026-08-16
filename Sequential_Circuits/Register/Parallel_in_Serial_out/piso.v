module piso (input [0:3]data, input clk,input rst, input control,output Y);
	reg [0:3]t;

	always @(posedge clk or posedge rst) begin 
	if (rst)
	t<=0;
	else begin 
		if(control) begin 
		t[1:3] <= t[0:2];
		t[0] <= 0;
		end
		else 
		t <= data;
	end
	end
	assign Y=t[3];
endmodule
