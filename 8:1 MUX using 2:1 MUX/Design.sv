module mux8to1(in,sel,out);
  input [7:0]in;
  input [2:0] sel;
  output out;
  wire w1,w2,w3,w4,w5,w6;
  mux2to1 m1(in[0],in[1],sel[0],w1);
  mux2to1 m2(in[2],in[3],sel[0],w2);
  mux2to1 m3(in[4],in[5],sel[0],w3);
  mux2to1 m4(in[6],in[7],sel[0],w4);
  mux2to1 m5(w1,w2,sel[1],w5);
  mux2to1 m6(w3,w4,sel[1],w6);
  mux2to1 m7(w5,w6,sel[2],out);
endmodule
module mux2to1(I0,I1,sel,out);
  input I0,I1,sel;
  output out;
  assign out=((~sel)&I0)|(sel&I1);
endmodule
