module sqr3bit(in,out);
  input [2:0] in;
  output [5:0] out;
  assign out[5] = in[2]&in[1];
  assign out[4] = (in[2]&~in[1])|(in[0]&in[2]);
  assign out[3] = in[0]&(in[1]^in[2]);
  assign out[2]= in[1]&~in[0];
  assign out[1]= 1'b0;
  assign out[0]= in[0];
endmodule
