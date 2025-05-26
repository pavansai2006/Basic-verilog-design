module dlatch_tb();
  reg d,en;
  wire q;
  dlatch D(d,en,q);
   initial
    begin
      $dumpfile("dlatch.vcd");
      $dumpvars(0,dlatch_tb);
    end
  initial
    begin
      d=0; en=0; #5
      d=1; en=1; #10
      d=0; 		 #5
      d=1;		 #5
      en=0; d=0; #5
      d=1;		 #5
      en=1; d=0; #5
      d=1;       #5
      $finish;
    end
endmodule
