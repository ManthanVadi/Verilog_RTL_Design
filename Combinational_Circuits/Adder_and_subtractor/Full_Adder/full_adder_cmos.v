`include "and_gate_cmos.v"
`include "or_gate_cmos.v"
`include "xor_gate_cmos.v"

module full_adder_cmos (input A,input B,input C,output sum,output carry);

	wire t1,t2,t3;

	xor_gate_cmos G1 (A,B,t1);
	xor_gate_cmos G2 (t1,C,sum);
	and_gate_cmos G3 (A,B,t2);
	and_gate_cmos G4 (t1,C,t3);
	or_gate_cmos  G5 (t2,t3,carry);

endmodule
