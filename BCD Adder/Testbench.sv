module bcdadder_tb();
  reg [3:0] A,B;
  wire [3:0] Sum;
  reg cin;
  wire cout;
  bcdadder BA(A,B,cin,Sum,cout);
  initial
    begin
      $dumpfile("bcdadder.vcd");
      $dumpvars(0,bcdadder_tb);
    end
  initial
    begin
      A=4'b0001; B=4'b1001; cin=0; #10
	  A=4'b1001; B=4'b1001; cin=1; #10
	  A=4'b0001; B=4'b0101; cin=1; #10
	  A=4'b0111; B=4'b1001; cin=1; #10
	  A=4'b0111; B=4'b0111; cin=0; #10
      $finish;
    end
endmodule
