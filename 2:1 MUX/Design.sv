module mux2to1(I0,I1,sel,out);
  input I0,I1,sel;
  output out;
  assign out=((~sel)&I0)|(sel&I1);
endmodule
