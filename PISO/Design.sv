module piso(clk,rst,ld,pin,sout);
  input clk,rst,ld;
  input [3:0] pin;
  output sout;
  reg [3:0] q;
  always @(posedge clk)
    begin
      if(!rst)
      	q=4'b0000;
      else if(ld)
        q<=pin;
      else
        q<=(q<<1);
    end
  assign sout=q[3];
endmodule
