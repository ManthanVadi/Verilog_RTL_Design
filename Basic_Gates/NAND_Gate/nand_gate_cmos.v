module nand_gate_cmos (input A,input B , output Y);
	supply1 VDD;
	supply0 VSS;
	wire t1;

	pmos p1(Y,VDD,A);
	pmos p2(Y,VDD,B);
	nmos n1(t1,VSS,A);
	nmos n2(Y,t1,B);

endmodule
