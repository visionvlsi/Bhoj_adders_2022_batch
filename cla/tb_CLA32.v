`timescale 1ns/1ps
module tb_CLA32;
  wire [31:0] sum;
  wire cout;
  reg [31:0] a, b;
  reg cin;
  
  CLA32 cla32(sum[31:0], cout, a[31:0], b[31:0]);
  
  initial
  begin
    $display("a|b||cout|sum");
  end
  
  initial
  begin
    $monitor("%d|%d||%d|%d", a[31:0], b[31:0], cout, sum[31:0]);
  end
  
  initial
  begin
    a='d999; b='d98999;

  end
endmodule
