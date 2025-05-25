module mux2to1_tb();
  reg I0,I1,sel;
  wire out;
  mux2to1 MUX(I0,I1,sel,out);
  initial
    begin
      I0=0;I1=1; sel=0; #10
	  I0=0;I1=1; sel=1; #10
	  I0=1;I1=0; sel=0; #10
	  I0=1;I1=0; sel=1; #10
	  $finish;
    end
  initial
    begin
      $dumpfile("2to1mux.vcd");
      $dumpvars(0,mux2to1_tb);
    end
endmodule
      
