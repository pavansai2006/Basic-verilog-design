module srlatch_nand_tb();
  reg s,r;
  wire q,qo;
  srlatch_nand SRN(s,r,q,qo);
  initial
    begin
      $dumpfile("srlatch_nand.vcd");
      $dumpvars(0,srlatch_nand_tb);
    end
  initial
    begin
      s=0; r=0; #10
      s=0; r=1; #10
      s=1; r=0; #10
      s=1; r=1; #10
      $finish;
    end
endmodule
