`timescale 1ns/1ps
module tb_RCA8;
  wire [7:0] sum;
  wire cout;
  reg [7:0] a, b;
  reg cin;
  
  reg [15:0] i;
  
  RCA8 rca8(sum[7:0], cout, a[7:0], b[7:0]);
  
  initial
  begin
    $display("a|b||cout|sum");
  end
  
  reg checkCarry;
  reg [7:0] checkSum;
  
  initial
  begin
    for(i=0; i<65536; i=i+1)
    begin
      #20; {checkCarry,checkSum} = a+b;
      $display("a=%b|b=%b||carry=%b|sum=%b", a[7:0], b[7:0], cout, sum[7:0]);
      $display("isCarryOK=%b|isSumOK=%b", ~(checkCarry^cout), ~|(checkSum^sum[7:0]));
      $display("---------------------------");
      {a[7:0], b[7:0]}=i;
      
    end
  end

endmodule
