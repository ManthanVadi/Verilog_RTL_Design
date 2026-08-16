module sequence01101 #(parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100)(input x , input rst,input clk, output reg Y);

	reg [2:0]ps,ns;

	always @(posedge clk or negedge rst) begin 
		if(!rst)begin 
			ps <= s0;
			ns <= s0;
		end
		else
			ps <= ns;
	end
	
	always @(ps,x) begin 
		case(ps)
			s0 : begin ns = (x) ? s0 : s1;
				Y = 0; end
			s1 : begin ns = (x) ? s2 : s1;
				Y = 0;end
			s2 : begin ns= (x) ? s3 : s1;
				Y = 0; end
			s3 : begin ns = (x) ? s0 : s4;
				Y = 0; end
			s4 : begin ns = (x) ? s2 : s1;
				Y= (x) ? 1:0; end
			default :begin ns = s0;
				Y=0; end
		endcase
	end
endmodule

	
