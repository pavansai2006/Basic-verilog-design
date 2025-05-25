module comparator_tb();
  reg [3:0] a,b;
  wire lt,eq,gt;
  comparator CO(a,b,lt,gt,eq);
  initial
    begin
      $dumpfile("comparator.vcd");
      $dumpvars(0,comparator_tb);
    end
  initial
    begin
      a=4'b1010; b=4'b1010; #10
      a=4'b0010; b=4'b0001; #10
      a=4'b0000; b=4'b1111; #10
      a=4'b1101; b=4'b0110; #10
      a=4'b1001; b=4'b1110; #10
      $finish;
    end
endmodule
