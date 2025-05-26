module tristatebuffer(in,en,out);
  input in,en;
  output out;
  assign out = en? in :1'bz;
endmodule
