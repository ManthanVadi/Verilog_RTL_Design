module and_gate_cmos( input A, input B, output Y );
	supply1 VDD;
	supply0 VSS;
	wire t1,t2;

	pmos p1(t2,VDD,A);
	pmos p2(t2,VDD,B);
	nmos n1(t1,VSS,B);
	nmos n2(t2,t1,A);
	
	pmos p3(Y,VDD,t2);
	nmos n3(Y,VSS,t2);

endmodule
