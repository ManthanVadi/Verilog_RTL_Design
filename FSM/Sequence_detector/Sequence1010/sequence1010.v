module sequence1010 #(parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11)(input x,input clk, output reg Y);
	
	reg [1:0]state;

	always @(posedge clk) begin 
		case(state)
			s0 : begin state <= (x)?s1:s0;
				Y <=0 ; end
			s1 : begin state <= (x)?s1:s2;
				Y <=0;end
			s2 : begin state <= (x)?s3:s0;
				Y <=0;end
			s3 : begin state <= (x)?s1:s2;
				Y <=(x)?0:1;end
			default : begin state <= s0;
					Y <=0; end
		endcase
	end
endmodule
		
