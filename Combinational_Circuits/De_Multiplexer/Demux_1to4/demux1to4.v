module demux1to4 (input A,input [3:0]sel,output [3:0]Y);
	reg [3:0] Y;
	always @(*)
		begin 
		case(sel)
		2'b00 : Y[0]=A;
		2'b01 : Y[1]=A;
		2'b10 : Y[2]=A;
		2'b11 : Y[3]=A;
		endcase
		end 
endmodule
