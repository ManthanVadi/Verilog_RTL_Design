module mul_top (
    input clk, reset, start,
    input [15:0] a_in, b_in,
    output [15:0] P,
    output done
);

    wire lda, ldb, ldp, clrp, decb;
    wire eqz;

    // Controller
    mul_datacontrol ctrl (
        .clk(clk),
        .reset(reset),
        .start(start),
        .eqz(eqz),
        .lda(lda),
        .ldb(ldb),
        .ldp(ldp),
        .clrp(clrp),
        .decb(decb),
        .done(done)
    );

    // Datapath
    mul_datapath dp (
        .clk(clk),
        .lda(lda),
        .ldb(ldb),
        .ldp(ldp),
        .clrp(clrp),
        .decb(decb),
        .a_in(a_in),
        .b_in(b_in),
        .eqz(eqz),
        .P(P)
    );

endmodule
