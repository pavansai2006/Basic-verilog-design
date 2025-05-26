module srff_tb();
  reg s,r,clk;
  wire q,qo;
  srff SR(s,r,clk,q,qo);
   initial
    begin
      $dumpfile("srff.vcd");
      $dumpvars(0,srff_tb);
    end
  initial
    begin
      clk=0;
      forever #5 clk=~clk;
    end
  initial begin
  $monitor("Time=%0t | S=%b R=%b CLK=%b | Q=%b Q'=%b", $time, s, r, clk, q, qo);
end
  initial
    begin
      s=0; r=0; #10
      s=0; r=1; #10
      s=1; r=0; #10
      s=1; r=1; #10
      $finish;
    end
endmodule
