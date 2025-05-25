module full_adder(a,b,c,sum,cout);
  input a,b,c;
  output sum,cout;
  wire w1,w2,w3;
  half_adder h1(a,b,w1,w2);
  half_adder h2(w1,c,sum,w3);
  assign cout=w2|w3;
endmodule
module half_adder(a,b,sum, cout);
  input a,b;
  output sum, cout;
  assign sum=a^b;
  assign cout= a&b;
endmodule
