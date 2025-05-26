module dff_tb();
  reg d,clk;
  wire q;
  dff D(d,clk,q);
   initial
    begin
      $dumpfile("dff.vcd");
      $dumpvars(0,dff_tb);
    end
  initial
    begin
      clk=0;
      forever #5 clk=~clk;
    end
  initial
    begin
      d=0; #10
      d=1; #10
      d=0; #10
      d=1; #10
      d=1; #10
      d=0; #10
      $finish;
    end
endmodule
