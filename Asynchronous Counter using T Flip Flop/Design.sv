module asyn_coun_tff(clk,rst,q,qo);
  output [3:0] q;
  output [3:0] qo;
  input clk,rst;
  wire t,q0,q1,q2,q3;
  assign t=1;
  tff t1(t,clk,rst,q0);
  tff t2(t,q0,rst,q1);
  tff t3(t,q1,rst,q2);
  tff t4(t,q2,rst,q3);
  assign q={q3,q2,q1,q0};
  assign qo=~q;
endmodule

module tff(t,clk,rst,q);
  input t,clk,rst;
  output reg q;
  always @(posedge clk, negedge rst)
    begin
      if(!rst)
        q<=0;
      else if(t)
        q<=~q;
      else
        q<=q;
    end
endmodule
