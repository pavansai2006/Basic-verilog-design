module fa_tb();
  reg a,b,c;
  wire sum,cout;
  full_adder HA(a,b,c,sum,cout);
  initial
    begin
      a=0;b=0;c=0; #10
	  a=0;b=0;c=1; #10
	  a=0;b=1;c=0; #10
	  a=0;b=1;c=1; #10
	  a=1;b=0;c=0; #10
	  a=1;b=0;c=1; #10
	  a=1;b=1;c=0; #10
      a=1;b=1;c=1; #10
      $finish;
    end
  initial
    begin
      $dumpfile("fa.vcd");
      $dumpvars(0,fa_tb);
    end
endmodule
