module hs_tb();
  reg a,b;
  wire d,bo;
  half_subtractor HS(a,b,d,bo);
  initial
    begin
      a=0; b=0; #10
      a=0; b=1; #10
      a=1; b=0; #10
      a=1; b=1; #10
      $finish;
    end
  initial
    begin
      $dumpfile("hs.vcd");
      $dumpvars(0,hs_tb);
    end
endmodule
      
      
