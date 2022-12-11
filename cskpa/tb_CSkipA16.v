`timescale 1ns/1ps
module tb_CSkipA16;
  wire [15:0] sum;
  wire cout;
  reg [15:0] a, b;
  
  CSkipA16 csa16(sum[15:0], cout, a[15:0], b[15:0]);
  
  initial
  begin
    $display("a       |b       ||cout|sum     ");
  end
  
  initial
  begin
    $monitor("%b|%b||%b   |%b", a[15:0], b[15:0], cout, sum[15:0]);
  end
  
  initial
  begin
    a=16'b1010000010100000; b=16'b1010000010100000;
    #10 a=16'b0101100011110100; b=16'b1111010011110100;
    #10 a=16'b0000111100111101; b=16'b0000111100001111;
    #10 a=16'b1100100011001010; b=16'b1100100011001010;
  end
endmodule
