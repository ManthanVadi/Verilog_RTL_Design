module nor_gate_cmos(input A,input B,output Y0;

	supply1 VDD;
	supply0 VSS;
	wire t;

	pmos p1(t,VDD,A);
	pmos p2(Y, t ,B);
	nmos n1(Y,VSS,A);
	nmos n2(Y,VSS,B);

endmodule
