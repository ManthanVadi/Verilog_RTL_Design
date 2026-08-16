module gcddatacontrol #(parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100,s5=3'b101)(lda,ldb,sel1,sel2,sel_in,done,clk,lt,gt,eq,start,reset);
	input clk,eq,lt,gt,start,reset;
	output reg lda,ldb,sel1,sel2,sel_in,done;

	reg [2:0] state;

	always @(posedge clk or negedge reset) begin 
		if(!reset)
			state <= s0;
		else begin 
			case(state)
				s0 : if(start) state <=s1;
				s1 : state <= s2;
				s2 : begin if(eq) state <= s5;
						else if (lt) state <= s4;
						else if (gt) state <= s3;
				end
				s3 : begin if(eq) state <= s5;
						else if (lt) state <= s4;
						else if (gt) state <= s3;
				end
				s4 : begin if(eq) state <= s5;
						else if (lt) state <= s4;
						else if (gt) state <= s3;
				end
				s5 : state <= s5;
				default : state <= s0;
			endcase
		end
	end
	always @(*) begin 
		case(state)
			s0 : begin sel_in=1;lda=1;ldb=0;done=0; end
			s1 : begin sel_in=1;lda=0;ldb=1;done=0; end
			s2 : begin if(eq) done=1;
					else if(lt) begin 
						sel1=1;sel2=0;sel_in=0;lda=0;ldb=1; end
					else if(gt) begin 
						sel1=0;sel2=1;sel_in=0;lda=1;ldb=0; end 
			end
			s3 : begin if(eq) done =1;
					else if(lt) begin 
						sel1=1;sel2=0;sel_in=0;lda=0;ldb=1; end
					else if(gt) begin 
						sel1=0;sel2=1;sel_in=0;lda=1;ldb=0; end
			end
			s4 : begin if(eq) done =1;
					else if(lt) begin 
						sel1=1;sel2=0;sel_in=0;lda=0;ldb=1; end
					else if(gt) begin 
						sel1=0;sel2=1;sel_in=0;lda=1;ldb=0; end
			end
			s5 : begin done=1;lda=0;ldb=0; sel1=0;sel2=0; end
			default :begin  lda=0;ldb=0;sel1=0;sel2=0; end
		endcase
	end

endmodule
































	
