module gcddatapath (lda,ldb,sel1,sel2,sel_in,data_in,clk,gt,lt,eq);
	input lda,ldb,sel1,sel2,sel_in,clk;
	input [15:0]data_in;
	output gt,lt,eq;
	
	wire [15:0] x,y,aout,bout,subout,bus;

	PIPO A(aout,bus,lda,clk);
	PIPO B(bout,bus,ldb,clk);
	MUX mux_in1 (x,aout,bout,sel1);
	MUX mux_in2 (y,aout,bout,sel2);
	MUX mux_data_in (bus,subout,data_in,sel_in);
	SUB Sb(subout,x,y);
	COM G1(lt,eq,gt,aout,bout);

endmodule

module PIPO (data_out,data_in,ld,clk);
	input [15:0] data_in;
	input ld,clk;
	output reg [15:0]data_out;
	
	always @(posedge clk) begin 
		if(ld)
			data_out <= data_in;
	end
endmodule

module MUX (data_out,data_in1,data_in2,sel);
	input [15:0] data_in1,data_in2;
	input sel;
	output [15:0]data_out;

	assign data_out = (sel) ? data_in2 : data_in1;
endmodule

module SUB (out,in1,in2);
	input [15:0]in1,in2;
	output reg [15:0] out;

	always @(*) begin 
		out = in1-in2;
	end
endmodule

module COM (lt,eq,gt,a,b);
	input [15:0] a,b;
	output lt,eq,gt;
	assign eq= (a==b);
	assign lt= (a<b);
	assign gt= (a>b);
endmodule
		
	
