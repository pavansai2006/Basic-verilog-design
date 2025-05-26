module srff(s,r,clk,q,qo);
  input s,r,clk;
  output q,qo;
  assign q = ~(~(s&clk)&qo);
  assign qo = ~(~(r&clk)&q);
endmodule
