module pipo(clk,rst,ld,pin,pout);
  input clk,rst,ld;
  input [3:0] pin;
  output reg [3:0] pout;
  always @(posedge clk)
    begin
      if(!rst)
      	pout=4'b0000;
      else if(ld)
        pout<=pin;
      else
        pout<=(pout<<1);
    end
endmodule
