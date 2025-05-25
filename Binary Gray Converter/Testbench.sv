module binary_gray_converter_tb();
  reg [3:0] bin;
  wire [3:0] gray;
  binary_gray_converter BGE(bin,gray);
  initial
    begin
      $dumpfile("binary_gray_converter_.vcd");
      $dumpvars(0,binary_gray_converter_tb);
    end
  initial
    begin
      bin=4'b1101; #10
      bin=4'b1001; #10
      bin=4'b0111; #10
      bin=4'b1010; #10
      bin=4'b0101; #10
      bin=4'b0100; #10
      bin=4'b1000; #10
      bin=4'b1110; #10
      $finish;
    end
endmodule
