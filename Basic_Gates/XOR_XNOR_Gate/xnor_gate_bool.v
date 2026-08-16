module xnor_gate_bool (input A , input B , inout Y);
	assign Y = ~(A ^ B);
endmodule 
