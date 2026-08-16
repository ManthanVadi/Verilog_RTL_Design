
/*module mul_datacontrol #(parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100)(eqz,clk,start,lda,ldb,ldp,clrp,decb,done,reset);

	input start,clk,eqz,reset;
	output reg lda,ldb,ldp,clrp,decb,done;

	reg [2:0]state;
	
	always @(posedge clk or posedge reset) begin 
		if(reset)
			state <= s0;
		else begin
		case(state)
			s0 : if(start) state<=s1;
			s1 : state <= s2;
			s2 : state <= s3;
			s3 : if(eqz) state <= s4;
			s4 : state <=s4;
			default : state <= s0;
		endcase
		end
	end

	always @(state) begin 
		case(state)
			s0 : begin  lda=0;ldb=0;ldp=0;clrp=0;decb=0; end
			s1 : begin  lda=1; end
			s2 : begin  lda=0;ldb=1;clrp=1; end
			s3 : begin  ldb=0;ldp=1;clrp=0;decb=1; end
			s4 : begin  ldp=0;decb=0;done=1; end
			default : begin lda=0;ldb=0;ldp=0;clrp=0;decb=0;done=0; end
		endcase
	end
endmodule */

module mul_datacontrol #(parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100)(
    input clk, reset, start, eqz,
    output reg lda, ldb, ldp, clrp, decb, done
);

    reg [2:0] state;

    // Sequential  
    always @(posedge clk or posedge reset) begin
        if(reset)
            state <= s0;
        else begin
            case(state)
                s0: if(start) state <= s1;
                s1: state <= s2;
                s2: state <= s3;
                s3: if(eqz) state <= s4;
                s4: state <= s4;  
		default: state <= s0;
            endcase
        end
    end

    // Combinational outputs
    always @(*) begin
		 lda=0; ldb=0; ldp=0; clrp=0; decb=0; done=0;
        case(state)
            s1: lda = 1;                  // Load A
            s2: begin ldb=1; clrp=1; end  // Load B and clear P
            s3: begin ldp=1; decb=1; end  // Add A to P; decrement B
            s4: done = 1;                 // Finished
        endcase
    end

endmodule



