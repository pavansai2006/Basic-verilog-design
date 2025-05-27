module ring_count_tb();
  wire [3:0] q;
  reg clk,rst;
  ring_count RC(clk,rst,q);
  initial
    begin
      $dumpfile("ring_count.vcd");
      $dumpvars(0,ring_count_tb);
    end
  initial
    begin
      clk=0;
      forever #5 clk=~clk;
    end
  initial
    begin
      rst=1; #5
      rst=0; #10
      rst=1; #50
      $finish;
    end
endmodule
