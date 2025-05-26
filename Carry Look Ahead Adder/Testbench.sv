module carry_look_ahead_adder_tb();
  reg [3:0] A,B;
  reg cin;
  wire [3:0] S;
  wire cout;
  wire [4:0] out;
  carry_look_ahead_adder CLA(A,B,cin,cout,S,out);
  initial
    begin
      $dumpfile("carry_look_ahead_adder.vcd");
      $dumpvars(0,carry_look_ahead_adder_tb);
    end
  initial
    begin
      A=4'b1000; B=4'b1000; cin=1'b1; #10
	  A=4'b1100; B=4'b0010; cin=1'b1; #10
	  A=4'b0100; B=4'b0111; cin=1'b0; #10
	  A=4'b1111; B=4'b1100; cin=1'b1; #10
	  A=4'b1111; B=4'b1111; cin=1'b1; #10
      $finish;
    end
endmodule
