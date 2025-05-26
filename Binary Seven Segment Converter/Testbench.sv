module bin_sevseg_conv_tb();
  reg [3:0] D;
  wire a,b,c,d,e,f,g;
  bin_sevseg_conv BSC(D,a,b,c,d,e,f,g);
  initial
    begin
      $dumpfile("bin_sevseg_conv.vcd");
      $dumpvars(0,bin_sevseg_conv_tb);
    end
  initial
    begin
      D=4'b0000; #10
	  D=4'b1000; #10
	  D=4'b0111; #10
	  D=4'b1001; #10
	  D=4'b1100; #10
	  $finish;
    end
endmodule
