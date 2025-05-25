module priorityencoder_tb();
  reg [3:0] in;
  wire [1:0] out;
  priority_encoder PEN(in,out);
  initial
    begin
      $dumpfile("priorityencoder.vcd");
      $dumpvars(0,priorityencoder_tb);
    end
  initial
    begin
      in=4'bxxx1; #10
	  in=4'bxx10; #10
	  in=4'bx100; #10
	  in=4'b1000; #10
      in=4'b1111; #10
      in=4'b0000; #10
	  $finish;
    end
endmodule
