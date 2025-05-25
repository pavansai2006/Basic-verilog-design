module gray_binary_converter_tb();
  reg [3:0] gray;
  wire [3:0] bin;
  gray_binary_converter GBE(bin,gray);
  initial
    begin
      $dumpfile("gray_binary_converter_.vcd");
      $dumpvars(0,gray_binary_converter_tb);
    end
  initial
    begin
      gray=4'b1101; #10
      gray=4'b1001; #10
      gray=4'b0111; #10
      gray=4'b1010; #10
      gray=4'b0101; #10
      gray=4'b0100; #10
      gray=4'b1000; #10
      gray=4'b1110; #10
      $finish;
    end
endmodule
