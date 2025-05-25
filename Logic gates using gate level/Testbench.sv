module gate_tb();
  reg a,b;
  wire and_out,or_out,not_out,nand_out,nor_out,xor_out,xnor_out;
  gate_logic gl(a,b,and_out,or_out,not_out,nand_out,nor_out,xor_out,xnor_out);
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
      $dumpfile("gate.vcd");
      $dumpvars(0,gate_tb);
    end
endmodule
