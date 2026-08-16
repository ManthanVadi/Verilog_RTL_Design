module or_gate_cmos(input A , input B , input Y);
	supply1 VDD;
	supply0 VSS;
	wire t1,t2;
	
	pmos p1 (t1,VDD,A);
	pmos p2 (t2,t1,B);
	nmos n1 (t2,VSS,A);
	nmos n2 (t2,VSS,B);

	pmos p3(Y,VDD,t2);
	nmos n3(Y,VSS,t2);
endmodule
