module mux16bit (input [15:0]A[3:0] , input [1:0] sel ,output reg [15:0]Y);

	always @(*) 
	begin
	case(sel)
	2'b00 : Y=A[0];
	2'b01 : Y=A[1];
	2'b10 : Y=A[2];
	2'b11 : Y=A[3];
	endcase
	end
endmodule
		 
