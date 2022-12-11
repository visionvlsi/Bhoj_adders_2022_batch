`timescale 1ns/1ps
module tb_FA;
  wire sum, cout;
  reg a, b, cin;
  
  FA fa(sum, cout, a, b, cin);
  
  initial
  begin
    $display("a|b|cin||cout|sum");
  end
  
  initial
  begin
    $monitor("%b|%b|%b  ||%b   |%b  ", a, b, cin, cout, sum);
  end
  
  initial
  begin
    a=0; b=0; cin=0;
    #10 a=0; b=0; cin=1;
    #10 a=0; b=1; cin=0;
    #10 a=0; b=1; cin=1;
    #10 a=1; b=0; cin=0;
    #10 a=1; b=0; cin=1;
    #10 a=1; b=1; cin=0;
    #10 a=1; b=1; cin=1;
  end
endmodule

