module fs_tb();
  reg a,b,c;
  wire d,bo;
  full_subtractor FS(a,b,c,d,bo);
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
      $dumpfile("fs.vcd");
      $dumpvars(0,fs_tb);
    end
endmodule
      
      
