module full_adder (input A, input B,input C , output sum , output carry);
	assign {carry,sum}=A+B+C;
endmodule
