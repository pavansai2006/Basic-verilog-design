module bcd_ex3_conv(bcd,ex3);
  input [3:0] bcd;
  output [3:0] ex3;
  assign ex3 = bcd+4'd3;
endmodule
