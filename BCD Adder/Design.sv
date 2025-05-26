module bcdadder(A,B,cin,Sum,cout);
  input [3:0] A,B;
  output [3:0] Sum;
  input cin;
  output cout;
  reg [4:0] sum_temp;
  reg cout_temp;
  always @(*)
    begin
      sum_temp = A+B+cin;
      if(sum_temp > 9)
        begin
          sum_temp = sum_temp + 6;
          cout_temp = 1;
        end
      else
        sum_temp = sum_temp[3:0];
      	cout_temp = sum_temp[4];
    end
  assign Sum = sum_temp[3:0];
  assign cout = cout_temp;
endmodule
