module gate_logic(a,b,and_out,or_out,not_out,nand_out,nor_out,xor_out,xnor_out);
  input a,b;
  output and_out,or_out,not_out,nand_out,nor_out,xor_out,xnor_out;
  and a1(and_out,a,b);
  or o1(or_out,a,b);
  not n1(not_out,a);
  nand n2(nand_out,a,b);
  nor n3(nor_out,a,b);
  xor x1(xor_out,a,b);
  xnor x2(xnor_out,a,b);
endmodule
