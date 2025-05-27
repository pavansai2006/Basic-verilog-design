module seq_det_mealy_tb();
  reg clk,rst, in;
  wire out;
  seq_det_mealy SDM(clk,rst,in,out);
  initial
    begin
      $dumpfile("seq_det_mealy.vcd");
      $dumpvars(0,seq_det_mealy_tb);
    end
  initial
    begin
      clk=0;
      forever #5 clk=~clk;
    end
  initial
    begin
      in=1; rst=1;  #5
      in=0; rst=0;	#5
      in=1; rst=1;  #5
      in=0; 		#10
      in=1; 		#10
      in=0; 		#10
      in=1;		 	#10
      in=1; 		#10
      in=0; 		#10
      in=1; 		#10
      in=1; 		#10
      in=0; 		#10
	  $finish;
    end
endmodule
