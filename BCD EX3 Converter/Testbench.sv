module bcd_ex3_conv_tb();
  reg [3:0] bcd;
  wire [3:0] ex3;
  bcd_ex3_conv BEX(bcd,ex3);
  initial
    begin
      $dumpfile("bcd_ex3_conv.vcd");
      $dumpvars(0,bcd_ex3_conv_tb);
    end
  initial
    begin
      bcd=4'b0001; #10
	  bcd=4'b1001; #10
	  bcd=4'b1001; #10
	  bcd=4'b0111; #10
	  bcd=4'b0111; #10
      $finish;
    end
endmodule
