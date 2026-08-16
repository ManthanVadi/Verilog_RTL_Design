module full_add_sub (input A,input B,input C,input con , output S, output Cout);
	wire t1,t2,t3,t4,t5;
	
	xor G1(t1,A,B);
	xor G2(S,t1,C);
	xor G3(t2,A,con);
	and G4(t3,t2,B);
	xor G5(t4,t1,con);
	and G6(t5,t4,C);
	or G7(Cout,t5,t3);

endmodule     
