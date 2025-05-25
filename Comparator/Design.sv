module comparator(a,b,lt,gt,eq);
  input [3:0] a,b;
  output lt,gt,eq;
  assign lt=(a<b);
  assign gt=(a>b);
  assign eq=(a==b);
endmodule
