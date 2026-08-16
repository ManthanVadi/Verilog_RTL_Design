module d(D,clk,rst,Q);
	input D,clk,rst;
	output reg Q;

	always @(posedge clk or posedge rst)
	begin 
	if(rst)
	Q<=0;
	else begin 
	case(D)
		1'bx : Q<=Q;
		1'b0 : Q<=0;
		1'b1 : Q<=1;
		default : Q<=1'bx;
	endcase
	end
	end
endmodule
