module master_slave_dff_tb();
  reg clk,rst,d;
  wire master,q;
  master_slave_dff MSD(clk,rst,d,master,q);
  initial
    begin
      $dumpfile("master_slave_dff.vcd");
      $dumpvars(0,master_slave_dff_tb);
    end
  initial
    begin
      clk=0;
      forever #5 clk=~clk;
    end
  initial
    begin
      d=1;rst=1; #10
      d=1;rst=0; #5
      d=1;rst=1; #10
      d=0;rst=1; #10
      d=1;rst=1; #10
      d=0;rst=1; #10
      d=1;rst=1; #10
	  $finish;
    end
endmodule
