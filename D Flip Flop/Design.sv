module dff(d,clk,q);
  input d,clk;
  output reg q;
  initial q=0;
  always @(posedge clk)
    begin
      case(d)
        1'b0: q=0;
        1'b1: q=1;
      endcase
    end
endmodule
