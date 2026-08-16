module traffic_light #(parameter RED=3'b001,Yellow=3'b010 , Green=3'b100,s0=2'b00,s1=2'b01,s2=2'b10)(input clk,output reg [2:0]light);
	
	reg [1:0] state;

	always @(posedge clk )begin 
		case(state)
		s0 :begin light <= Yellow;
			state <=s1; end
		s1 :begin  light <= Green;
			state <=s2; end
		s2 : begin light <= RED;
			state <=s0; end
		default :begin  light <= RED;
			state <=s0; end
		endcase
	end
endmodule
