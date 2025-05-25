module priority_encoder(in,out);
  input [3:0] in;
  output reg [1:0] out;
  always @(*)
    begin
      out=2'b00;
      case(in)
        4'bxxx1: out=2'b00;
        4'bxx10: out=2'b01;
        4'bx100: out=2'b10;
	    4'b1000: out=2'b11;
		default: out=2'b00;
      endcase
    end
endmodule
