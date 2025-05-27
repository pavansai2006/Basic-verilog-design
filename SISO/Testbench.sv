module siso_tb();
  wire sout;
  reg clk,rst,sin;
  siso SISO(clk,rst,sin,sout);
  initial
    begin
      $dumpfile("siso.vcd");
      $dumpvars(0,siso_tb);
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
      $finish;
    end
endmodule
