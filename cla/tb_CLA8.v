`timescale 1ns/1ps
module tb_CLA8;
  wire [7:0] sum;
  wire cout;
  reg [7:0] a, b;
  reg cin;
  
  CLA8 cla8(sum[7:0], cout, a[7:0], b[7:0]);
  
  initial
  begin
    $display("a|b||cout|sum");
  end
  
  initial
  begin
    $monitor("%b|%b||%b|%b", a[7:0], b[7:0], cout, sum[7:0]);
  end
  
  initial
  begin
    a=8'b11111010; b=8'b11110000;
    #10    a=8'b11111010; b=8'b11110001;
    #10    a=8'b00111000; b=8'b10010000;
    #10    a=8'b11000010; b=8'b10110000;

  end

endmodule
