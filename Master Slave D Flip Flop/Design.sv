module master_slave_dff(clk,rst,d,master,q);
  input clk,rst,d;
  output reg master,q;
  always @(posedge clk,negedge rst)
    begin
      if(!rst)
        master<=0;
      else
        master<=d;
    end
  always @(negedge clk, negedge rst)
    begin
      if(!rst)
        q<=0;
      else
        q<=master;
    end
endmodule
