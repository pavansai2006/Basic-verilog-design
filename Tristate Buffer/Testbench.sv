module tristatebuffer_tb();
  reg in,en;
  wire out;
  tristatebuffer TSB(in,en,out);
  initial
    begin
      $dumpfile("tristatebuffer.vcd");
      $dumpvars(0,tristatebuffer_tb);
    end
  initial
    begin
      in=0; en=0; #10
      in=1 ;en=0; #10
      in=0; en=1; #10
      in=1; en=1; #10
      $finish;
    end
endmodule
