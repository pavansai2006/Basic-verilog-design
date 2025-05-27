module asyn_coun_tff_tb();
  wire [3:0] q,qo;
  reg clk,rst;
  asyn_coun_tff AST(clk,rst,q,qo);
  initial
    begin
      $dumpfile("asyn_coun_tff.vcd");
      $dumpvars(0,asyn_coun_tff_tb);
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
      rst=1; #120
      $finish;
    end
endmodule
