module decimal_bcd_encoder_tb();
  reg [9:0] in;
  wire [3:0] out;
  decimal_bcd_encoder DBE(in,out);
  initial
    begin
      $dumpfile("decimal_bcd_encoder.vcd");
      $dumpvars(0,decimal_bcd_encoder_tb);
    end
  initial
    begin
      in=10'b0000000001; #10
      in=10'b1000000000; #10
      in=10'b0000100000; #10
      in=10'b0000001010; #10
      in=10'b1000000001; #10
      $finish;
    end
endmodule
