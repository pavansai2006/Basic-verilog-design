module sync_up_down_count(clk,rst,en,out);
  input clk,rst,en;
  output reg [2:0] out;
  always @(posedge clk)
    begin
      if(!rst)
      out=3'b000;
      else if(en)
        out=out+1;
      else
        out=out-1;
    end
endmodule
