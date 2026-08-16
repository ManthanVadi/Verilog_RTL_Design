`include "mul_datapath.v"
`include "mul_datacontrol.v"

/*module mul_datapath_tb;
	reg [15:0] data_in;
	reg start,clk;
	wire done;

	mul_datapath DP(clk,lda,ldb,ldp,clrp,decb , data_in,eqz);
	mul_datacontrol DC(eqz,clk,start,lda,ldb,ldp,clrp,decb,done,reset);

	initial begin 
	clk=0;	
	forever #5 clk=~clk;
	end 

	initial begin 
	$fsdbDumpvars();
	$monitor ($time , " Output =%d, done =%b ",DP.y,done);
	reset=1;
	start=0;
	data_in=0;

	#12 reset=0;
	#5 start=1;
	#10 data_in = 25;
	#20 data_in = 10;
	#300 $finish;
end
endmodule */

module mul_datapath_tb;

    reg clk, reset, start;
    reg [15:0] A, B;

    wire lda, ldb, ldp, clrp, decb, done, eqz;
    wire [15:0] P;

    mul_datapath DP(
        .clk(clk),
        .lda(lda), .ldb(ldb), .ldp(ldp), .clrp(clrp), .decb(decb),
        .a_in(A), .b_in(B),
        .eqz(eqz),
        .P(P)
    );

    mul_datacontrol DC(
        .clk(clk), .reset(reset), .start(start), .eqz(eqz),
        .lda(lda), .ldb(ldb), .ldp(ldp), .clrp(clrp), .decb(decb), .done(done)
    );

    // Clock
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Stimulus
    initial begin
        $fsdbDumpvars();;
        $monitor($time, " P=%d done=%b", P, done);

        reset = 1; start = 0; A = 0; B = 0;
        #15 reset = 0;

        // Start multiplication
        #10 A = 25;
        #10 B = 10;
        #5  start = 1;
        #10 start = 0;

        #300 $finish;
    end

endmodule


  
