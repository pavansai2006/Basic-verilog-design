module full_subtractor(a,b,c,d,bo);
  input a,b,c;
  output d,bo;
  assign d=a^b^c;
  assign bo=~a&b|~a&c|b&c;
endmodule
