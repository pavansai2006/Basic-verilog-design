module evenparitychecker_tb();
  reg [3:0] in;
  reg p;
  wire error;
  evenparitychecker EPC(in,p,error);
  initial
    begin
      $dumpfile("evenparitychecker.vcd");
      $dumpvars(0,evenparitychecker_tb);
    end
  initial
    begin
      in=4'b1010; p=1'b0; #10
      in=4'b0100; p=1'b1; #10
      in=4'b0000; p=1'b1; #10
      in=4'b1111; p=1'b0; #10
      $finish;
    end
endmodule
