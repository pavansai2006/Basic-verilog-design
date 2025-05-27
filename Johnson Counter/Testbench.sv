module johnson_count_tb();
  wire [3:0] q;
  reg clk,rst;
  johnson_count JC(clk,rst,q);
  initial
    begin
      $dumpfile("johnson_count.vcd");
      $dumpvars(0,johnson_count_tb);
    end
  initial
    begin
      clk=0;
      forever #5 clk=~clk;
    end
  initial
    begin
      rst=1; #5
      rst=0; #5
      rst=1; #90
      $finish;
    end
endmodule
