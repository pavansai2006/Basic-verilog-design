module tff(t,rst,clk,q);
  input t,rst,clk;
  output reg q;
  always @(posedge clk)
    begin
      if(!rst)
        q<=1'b0;
      else if(t)
        q<=~q;
    end
endmodule
