`timescale 1ns/1ps
module tb_CSkipA32;
  wire [31:0] sum;
  wire cout;
  reg [31:0] a, b;
  reg cin;
  
  CSkipA32 sca32(sum[31:0], cout, a[31:0], b[31:0]);
  
  initial
  begin
    $display("a|b||cout|sum");
  end
  
  initial
  begin
    $monitor("%b|%b||%b|%b", a[31:0], b[31:0], cout, sum[31:0]);
  end
  
  initial
  begin
    a='b10100000101000001111111111111111; b='b10100000101111111111111111100000;
    #10 a='b01011000111111111111111111110100; b='b11110100111101001111111111111111;
    #10 a='b11111111111111110000111100111101; b='b00001111000011111111111111111111;
    #10 a='b11011111111111111110100011001010; b='b11001111111111111111100011001010;

  end
endmodule
