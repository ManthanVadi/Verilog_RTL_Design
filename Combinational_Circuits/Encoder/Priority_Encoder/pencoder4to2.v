module pencoder4to2(input [3:0]A,input E,output reg [1:0]Y);
		
	always @(*) begin 
		if(E) begin 
		if(A[3]==1)
			Y=2'b11;
		else if(A[2]==1)
			Y=2'b10;
		else if(A[1]==1)
			Y=2'b01;
		else if(A[0]==1)
			Y=2'b00;
		end
		else
		Y=4'bxxxx;
	end
endmodule
