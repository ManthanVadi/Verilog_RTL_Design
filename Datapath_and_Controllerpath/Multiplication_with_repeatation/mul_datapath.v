/* module PIPO1 (dout,din,ld,clk);
	input [15:0]din;
	input ld,clk;
	output reg [15:0]dout;

	always @(posedge clk) begin 
		if(ld)
			dout<=din;
	end
endmodule

module PIPO2 (dout,din,ld,clr,clk);
	input [15:0] din;
	input ld,clr,clk;
	output reg [15:0] dout;
	
	always @(posedge clk) begin 
		if(clr)
			dout <= 16'b0;
		else if(ld)
			dout <= din;
	end
endmodule

module Sum(dout,in1,in2) ;
	input [15:0]in1,in2;
	output reg [15:0] dout;
		
	always @ (*) begin 
		dout = in1+in2;
	end
endmodule

module CNTR(dout,din,ld,dec,clk);
	input [15:0] din;
	input clk,dec,ld;
	output reg [15:0] dout;
	
	always @(posedge clk) begin 
		if(ld)
			dout <= din;
		else if(dec)
			dout <= dout-1;
	end
endmodule

module COMP (out,in);
	input [15:0]in;
	output out;

	assign out= (in==0);
endmodule



module mul_datapath (clk,lda,ldb,ldp,clrp,decb , data_in,eqz);
	output eqz;
	input [15:0]data_in;
	input clk, lda,ldb,ldp,clrp,decb;

	wire [15:0] x,y,z,Bout,Bus;

	PIPO1 A(x,Bus,lda,clk);
	PIPO2 P(y,z,ldp,clrp,clk);
	Sum S1 (z,x,y);
	CNTR B (Bout,Bus,ldb,decb,clk);
	COMP g1(eqz,Bout);
endmodule */

module PIPO #(parameter W=16) (output reg [W-1:0] dout,
                               input [W-1:0] din,
                               input ld, clk);
    always @(posedge clk)
        if(ld) dout <= din;
endmodule

module PIPO_CLR #(parameter W=16) (output reg [W-1:0] dout,
                                   input [W-1:0] din,
                                   input ld, clr, clk);
    always @(posedge clk)
        if(clr) dout <= 0;
        else if(ld) dout <= din;
endmodule

module SUM #(parameter W=16) (output [W-1:0] dout,
                              input [W-1:0] a, b);
    assign dout = a + b;
endmodule

module COUNTER #(parameter W=16) (output reg [W-1:0] dout,
                                  input [W-1:0] din,
                                  input ld, dec, clk);
    always @(posedge clk)
        if(ld) dout <= din;
        else if(dec) dout <= dout - 1;
endmodule

module COMP #(parameter W=16) (output out,
                               input [W-1:0] in);
    assign out = (in == 0);
endmodule

module mul_datapath(
    input clk,
    input lda, ldb, ldp, clrp, decb,
    input [15:0] a_in, b_in,   // <-- two inputs for multiply
    output eqz,
    output [15:0] P           // <-- final product
);

    wire [15:0] A, Bcount, Psum;

    PIPO      Areg(A, a_in, lda, clk);
    COUNTER   Breg(Bcount, b_in, ldb, decb, clk);
    PIPO_CLR  Preg(P, Psum, ldp, clrp, clk); 
    SUM       adder(Psum, P, A);
    COMP      cmp(eqz, Bcount);

endmodule






























