module sqr3bit_tb();
  reg [2:0] in;
  wire [5:0] out;
  sqr3bit S3B(in,out);
  initial
    begin
      $dumpfile("sqr3bit.vcd");
      $dumpvars(0,sqr3bit_tb);
    end
  initial
    begin
      in=3'b000;#10
      in=3'b001;#10
      in=3'b010;#10
      in=3'b011;#10
      in=3'b100;#10
      in=3'b101;#10
      in=3'b110;#10
      in=3'b111;#10
      $finish;
    end
endmodule
