module carry_look_ahead_adder(A,B,cin,cout,S,out);
  input [3:0] A,B;
  input cin;
  output [3:0] S;
  output cout;
  output [4:0] out;
  wire [3:0]C,P,G;
  
  assign G[0] = A[0] & B[0];
  assign G[1] = A[1] & B[1];
  assign G[2] = A[2] & B[2];
  assign G[3] = A[3] & B[3];
  
  assign P[0] = A[0] | B[0];
  assign P[1] = A[1] | B[1];
  assign P[2] = A[2] | B[2];
  assign P[3] = A[3] | B[3];
  
  assign C[0] = cin;
  assign C[1] = G[0]&(P[0]|cin);
  assign C[2] = G[1]|(P[1]&(G[0]|(P[0]&cin)));
  assign C[3] = G[2]|(P[2]&(G[1]|(P[1]&(G[0]|(P[0]&cin)))));
  
  assign cout = G[3]|(P[3]&(G[2]|(P[2]&(G[1]|(P[1]&(G[0]|(P[0]&cin)))))));
  
  assign S[0] = A[0]^B[0]^C[0];
  assign S[1] = A[1]^B[1]^C[1];
  assign S[2] = A[2]^B[2]^C[2];
  assign S[3] = A[3]^B[3]^C[3];
  
  assign out={cout,S};
  
endmodule
