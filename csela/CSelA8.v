// Carry Select Adder - 8 bits
module CSelA8(output [7:0] sum, output cout, input [7:0] a, b);

  wire [7:0] sum0, sum1;
  wire c1;

  RCA4 rca0_0(sum0[3:0], cout0_0, a[3:0], b[3:0], 0);
  RCA4 rca0_1(sum1[3:0], cout0_1, a[3:0], b[3:0], 1);
  MUX2to1_w4 mux0_sum(sum[3:0], sum0[3:0], sum1[3:0], 0);
  MUX2to1_w1 mux0_cout(c1, cout0_0, cout0_1, 0);

  RCA4 rca1_0(sum0[7:4], cout1_0, a[7:4], b[7:4], 0);
  RCA4 rca1_1(sum1[7:4], cout1_1, a[7:4], b[7:4], 1);
  MUX2to1_w4 mux1_sum(sum[7:4], sum0[7:4], sum1[7:4], c1);
  MUX2to1_w1 mux1_cout(cout, cout1_0, cout1_1, c1);
  
endmodule
