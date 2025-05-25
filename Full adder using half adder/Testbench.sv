module fa_tb( );
  reg a,b,c;
  wire sum,cout;
  full_adder fa(a,b,c,sum,cout);
  integer i;
initial
begin
  for(i = 0; i < 8; i = i + 1)
 begin
   {a, b, c}= i;
 #10;
 end
 $finish;
 end
  initial
    begin
      $dumpfile("fa.vcd");
      $dumpvars(0,fa_tb);
    end
endmodule
