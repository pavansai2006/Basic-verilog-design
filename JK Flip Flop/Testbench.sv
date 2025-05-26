module jkff_tb();
  reg j,k,clk;
  wire q;
  jkff JK(j,k,clk,q);
   initial
    begin
      $dumpfile("jkff.vcd");
      $dumpvars(0,jkff_tb);
    end
  initial
    begin
      clk=0;
      forever #5 clk=~clk;
    end
  initial
    begin
      j=0; k=0; #10
      j=0; k=1; #10
      j=1; k=0; #10
      j=1; k=1; #10
      $finish;
    end
endmodule
