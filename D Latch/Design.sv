module dlatch(d,en,q);
  input d,en;
  output reg q;
  always @(d,en)
    begin
      if(en)
        q=d;
    end
endmodule
