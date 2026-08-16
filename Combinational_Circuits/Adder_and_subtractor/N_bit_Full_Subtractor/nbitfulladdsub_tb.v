`include "nbitfulladdsub.v"
module nbitfulladdsub_tb;
	localparam SIZE=32;
	reg [SIZE-1:0] A,B;
	reg cin,con;
	wire [SIZE-1:0]S;
	wire C;

	nbitfulladdsub #(SIZE)G1(A,B,cin,con,S,C);
	initial begin 
	$fsdbDumpvars();
	#20 A=32'h12345534;B=32'he2ac5499;cin=0;con=0;
	$display($time ,"A=%b , B=%b , cin=%b , con=%b , Sum=%b , Cout=%b ",A,B,cin,con,S,C);

	#20 A=32'h12271234;B=32'habcf1227;cin=1;con=1;
	$display($time ,"A=%b , B=%b , cin=%b , con=%b , diff=%b , Borrow=%b ",A,B,cin,con,S,C);

	#20 A=32'h06178534;B=32'he2712709;cin=0;con=0;
	$display($time ,"A=%b , B=%b , cin=%b , con=%b , Sum=%b , Cout=%b ",A,B,cin,con,S,C);
	#20$finish;
end
endmodule
