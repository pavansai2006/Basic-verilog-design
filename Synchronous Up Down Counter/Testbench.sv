module sync_up_down_count_tb();
  wire [2:0] out;
  reg clk,en,rst;
  sync_up_down_count SUPC(clk,rst,en,out);
  initial
    begin
      $dumpfile("sync_up_down_count.vcd");
      $dumpvars(0,sync_up_down_count_tb);
    end
  initial
    begin
      clk=0;
      forever #5 clk=~clk;
    end
  initial
    begin
      en=0; rst=1; #5
      en=1; rst=0; #5
      en=1; rst=1; #85
      en=0; rst=1; #90
      $finish;
    end
endmodule
