module evenparity_tb();
  reg [3:0] in;
  wire p;
  evenparity EP(in,p);
  initial
    begin
      $dumpfile("evenparity.vcd");
      $dumpvars(0,evenparity_tb);
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
