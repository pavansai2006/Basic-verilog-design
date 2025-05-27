module sipo_tb();
  wire [3:0] pout;
  reg clk,rst,sin;
  sipo SIPO(clk,rst,sin,sout);
  initial
    begin
      $dumpfile("sipo.vcd");
      $dumpvars(0,sipo_tb);
    end
  initial
    begin
      clk=0;
      forever #5 clk=~clk;
    end
  initial
    begin
      rst=1; sin=1; #5
      rst=0; sin=0; #10
      rst=1; sin=1; #10
      sin=1; #10
      sin=1; #10
      sin=0; #10
      sin=1; #5
      $finish;
    end
endmodule
