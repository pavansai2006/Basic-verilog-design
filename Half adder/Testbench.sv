module ha_tb();
  reg a,b;
  wire sum,cout;
  half_adder HA(a,b,sum,cout);
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
      $dumpfile("ha.vcd");
      $dumpvars(0,ha_tb);
    end
endmodule
