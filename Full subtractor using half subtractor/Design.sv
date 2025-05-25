module full_subtractor(a,b,c,d,bo);
  input a,b,c;
  output d,bo;
  wire w1,w2,w3;
  half_subtractor h1(a,b,w1,w2);
  half_subtractor h2(w1,c,d,w3);
  assign bo= w2|w3;
endmodule

module half_subtractor(a,b,d,bo);
  input a,b;
  output d,bo;
  assign d=a^b;
  assign bo=~a&b;
endmodule
  
