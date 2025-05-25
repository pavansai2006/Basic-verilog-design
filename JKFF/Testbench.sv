module jkff_tb();
  reg j,k,clk;
  wire q;
  
  jkff JK(j,k,clk,q);
  initial clk=0;
  always #5 clk=~clk;
  initial
    begin
      $dumpfile("jkff.vcd");
      $dumpvars(0,jkff_tb);
    end
  initial
    begin
      j=0; k=0;#10
      k=1; #10
      j=1; k=0; #10
      k=1; #10
      $finish;
    end
endmodule
