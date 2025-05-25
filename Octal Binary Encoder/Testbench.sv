module octal_binary_encoder_tb();
  reg [7:0] in;
  wire [2:0] out;
  octal_binary_encoder OBE(in,out);
  initial
    begin
      $dumpfile("octal_binary_encoder.vcd");
      $dumpvars(0,octal_binary_encoder_tb);
    end
  initial
    begin
      in=8'b00000000; #10
      in=8'b00000001; #10
      in=8'b00000010; #10
      in=8'b00000100; #10
      in=8'b00001000; #10
      in=8'b00010000; #10
      in=8'b00100000; #10
      in=8'b01000000; #10
      in=8'b10000000; #10
      $finish;
    end
endmodule
