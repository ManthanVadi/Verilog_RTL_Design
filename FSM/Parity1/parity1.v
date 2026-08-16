module parity1 #(parameter even =1'b0,odd=1'b1)(input x , input rst,input clk, output reg Y);
	reg state;

	always @(posedge clk or negedge rst) begin 
	if(!rst)
		state <= even;
	else begin 
		case(state)
			even : state <= (x)? odd :even;
			odd  : state <= (x)? even : odd;
			default : state<= even;
		endcase
	end
	end
	always @(state) begin 
		case(state)
			even : Y=0;
			odd :  Y=1;
		endcase
	end
endmodule
