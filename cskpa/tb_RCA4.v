`timescale 1ns/1ps
module tb_RCA4;
  wire [3:0] sum;
  wire cout;
  reg [3:0] a, b;
  reg cin;
  
  RCA4 rca4(sum[3:0], cout, a[3:0], b[3:0]);
  
  initial
  begin
    $display("a|b||cout|sum");
  end
  
  initial
  begin
    $monitor("%b|%b||%b|%b", a[3:0], b[3:0], cout, sum[3:0]);
  end
  
  initial
  begin
    a=4'b1010; b=4'b1010;
    #10 a=4'b1000; b=4'b1100;
    #10 a=4'b0011; b=4'b1111;

  end
endmodule
