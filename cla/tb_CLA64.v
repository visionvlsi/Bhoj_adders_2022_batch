`timescale 1ns/1ps
module tb_CLA64;
  wire [63:0] sum;
  wire cout;
  reg [63:0] a, b;
  reg cin;
  
  CLA64 cla64(sum[63:0], cout, a[63:0], b[63:0]);
  
  initial
  begin
    $display("a|b||cout|sum");
  end
  
  initial
  begin
    $monitor("%d|%d||%d|%d", a[63:0], b[63:0], cout, sum[63:0]);
  end
  
  initial
  begin
    a=64'd9991; b=64'd8810;

  end
endmodule

