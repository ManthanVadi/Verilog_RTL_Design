module full_sub(input A,input B,input C,output difference , output borrow);
	wire t1,t2,t3;

	xor(t1,A,B);
	xor(difference,t1,C);
	and(t2,~A,B);
	and(t3,~t1,C);
	or(borrow,t2,t3);

endmodule
