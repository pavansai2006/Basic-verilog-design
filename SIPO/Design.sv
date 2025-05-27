module sipo(clk,rst,sin,pout);
  input clk,rst,sin;
  output reg [3:0] pout;
  always @(posedge clk)
    begin
      if(!rst)
      	pout=4'b0000;
      else
        pout<={pout[2:0],sin};
    end
endmodule
