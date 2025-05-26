module carry_save_adder_tb();
  reg [3:0] a,b,c;
  wire [4:0] sum;
  wire cout;
  wire [5:0] out;
  carry_save_adder CSA(a,b,c,sum,cout,out);
  initial
    begin
      $dumpfile("carry_save_adder.vcd");
      $dumpvars(0,carry_save_adder_tb);
    end
  initial
    begin
      a=4'b0010; b=4'b1001; c=4'b0101; #10
      a=4'b1010; b=4'b1111; c=4'b1101; #10
      a=4'b0010; b=4'b1001; c=4'b0101; #10
      a=4'b1111; b=4'b1111; c=4'b1110; #10
      a=4'b1100; b=4'b1001; c=4'b0100; #10
      $finish;
    end
endmodule
