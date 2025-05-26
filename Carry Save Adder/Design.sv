module carry_save_adder(a,b,c,sum,cout,out);
  input [3:0] a,b,c;
  output cout;
  output [5:0] out;
  output [4:0] sum;
  wire [3:0] sum_temp,cout_temp;
  wire [2:0] co;
  fulladder fa1(a[0],b[0],c[0],sum_temp[0],cout_temp[0]);
  fulladder fa2(a[1],b[1],c[1],sum_temp[1],cout_temp[1]);
  fulladder fa3(a[2],b[2],c[2],sum_temp[2],cout_temp[2]);
  fulladder fa4(a[3],b[3],c[3],sum_temp[3],cout_temp[3]);
  assign sum[0] = sum_temp[0];
  fulladder fa5(sum_temp[1],cout_temp[0],1'b0,sum[1],co[0]);
  fulladder fa6(sum_temp[2],cout_temp[1],co[0],sum[2],co[1]);
  fulladder fa7(sum_temp[3],cout_temp[2],co[1],sum[3],co[2]);
  fulladder fa8(1'b0,cout_temp[3],co[2],sum[4],cout);
  assign out = {cout,sum};
endmodule

module fulladder(a,b,c,sum,carry);
  input a,b,c;
  output sum,carry;
  assign sum = a^b^c;
  assign carry = (a&b)|(b&c)|(c&a);
endmodule
