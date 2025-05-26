module oddparity_tb();
  reg [3:0] in;
  wire p;
  oddparity OP(in,p);
  initial
    begin
      $dumpfile("oddparity.vcd");
      $dumpvars(0,oddparity_tb);
    end
  initial
    begin
      in=4'b1010; #10
      in=4'b0100; #10
      in=4'b0000; #10
      in=4'b1111; #10
      $finish;
    end
endmodule
