module xnor_gate_cmos (input A, input B, output Y);
	supply1 VDD;
	supply0 Gnd;
	wire t[0:3];
	wire nt[0:4];

	mos p1(t[0],VDD,A);
	pmos p2(t[0],VDD,B);
	nmos n1(nt[0],Gnd,A);
	nmos n2(t[0],nt[0],B);

	pmos p3(t[1],VDD,A);
	pmos p4(t[1],VDD,t[0]);
	nmos n3(nt[1],Gnd,A);
	nmos n4(t[1],nt[1],t[0]);

	pmos p5(t[2],VDD,B);
	pmos p6(t[2],VDD,t[0]);
	nmos n5(nt[2],Gnd,B);
	nmos n6(t[2],nt[2],t[0]);

	pmos p7(t[3],VDD,t[1]);
	pmos p8(t[3],VDD,t[2]);
	nmos n7(nt[3],Gnd,t[1]);
	nmos n8(t[3],nt[3],t[2]);

	pmos p9(Y,VDD,t[3]);
	nmos n9 (Y,Gnd,t[3]);

endmodule
