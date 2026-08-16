module demux1to8 (input A,input [2:0]sel,output [7:0]Y);
	reg [7:0]Y;

	always @(*)begin
	Y=0;
	Y[sel]=A;
	end
endmodule
