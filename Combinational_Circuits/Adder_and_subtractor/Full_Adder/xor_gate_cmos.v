module xor_gate_cmos (input A,input B , output Y);
	supply1 VDD;
	supply0 Gnd;
	wire t1,t2,t3,nt1,nt2,nt3,nt4;

	pmos p1(t1,VDD,A);
	pmos p2(t1,VDD,B);
	nmos n1(nt1,Gnd,A);
	nmos n2(t1,nt1,B);

	pmos p3(t2,VDD,A);
	pmos p4(t2,VDD,t1);
	nmos n3(nt2,Gnd,A);
	nmos n4(t2,nt2,t1);

	pmos p5(t3,VDD,B);
	pmos p6(t3,VDD,t1);
	nmos n5(nt3,Gnd,B);
	nmos n6(t3,nt3,t1);

	pmos p7(Y,VDD,t2);
	pmos p8(Y,VDD,t3);
	nmos n7(nt4,Gnd,t2);
	nmos n8(Y,nt4,t3);

endmodule
	

