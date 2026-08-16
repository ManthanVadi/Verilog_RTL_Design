`include "full_adder_cmos.v"
module n_bit_fadder #(parameter Size=8)(input [Size-1:0]A,input [Size-1:0]B , input Cin,output [Size-1:0]Sum,output Cout);

	wire [Size:0]c;
	assign c[0]=Cin;
	genvar i;
	generate for(i=0;i<Size;i=i+1)
	begin:full_add
	full_adder_cmos G1 ( A[i],B[i], c[i],Sum[i],c[i+1]);
	end
	endgenerate
	assign Cout=c[Size];

endmodule
	
	
	
