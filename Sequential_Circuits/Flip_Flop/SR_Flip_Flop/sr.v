module sr(input S,input R,input clk,input rst,output reg Q);
	always @(posedge clk or posedge rst)
	begin 
	if(rst)
	Q<=0;
	else
	begin
	case({S,R})
	2'b00 : Q<=Q;
	2'b01 : Q<=0;
	2'b10 : Q<=1;
	2'b11 : Q<=1'bx;
	default : Q<=1'bx;
	endcase
	end
end
endmodule
	
