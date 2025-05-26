module tff_tb();
  reg t,rst,clk;
  wire q;
  tff T(t,rst,clk,q);
   initial
    begin
      $dumpfile("tff.vcd");
      $dumpvars(0,tff_tb);
    end
  initial
    begin
      clk=0;
      forever #5 clk=~clk;
    end
  initial
    begin
      rst=0; 	  #7
      rst=1; t=0; #10
      t=1; 		  #10
      t=1;        #10
      rst=0; t=0; #10
      rst=1; t=1; #10
      t=0; 		  #10
      $finish;
    end
endmodule
