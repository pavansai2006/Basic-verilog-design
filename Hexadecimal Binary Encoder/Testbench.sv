module hexadecimal_binary_encoder_tb();
  reg [15:0] in;
  wire [3:0] out;
  hexadecimal_binary_encoder OBE(in,out);
  initial
    begin
      $dumpfile("hexadecimal_binary_encoder.vcd");
      $dumpvars(0,hexadecimal_binary_encoder_tb);
    end
  initial
    begin
      in=16'h0000; #10
      in=16'h8000; #10
      in=16'h0400; #10
      in=16'h0002; #10
      $finish;
    end
endmodule
