
// Carry Select Adder - 64 bits
module CSelA64(output [63:0] sum, output cout, input [63:0] a, b);

  wire [63:0] sum0, sum1;
  wire [15:1] c;
  wire [15:0] cout0, cout1;

  RCA4 rca0_0(sum0[3:0], cout0[0], a[3:0], b[3:0], 0);
  RCA4 rca0_1(sum1[3:0], cout1[0], a[3:0], b[3:0], 1);
  MUX2to1_w4 mux0_sum(sum[3:0], sum0[3:0], sum1[3:0], 0);
  MUX2to1_w1 mux0_cout(c[1], cout0[0], cout1[0], 0);

  RCA4 rca_other_0[14:1](sum0[59:4], cout0[14:1], a[59:4], b[59:4], 1'b0);
  RCA4 rca_other_1[14:1](sum1[59:4], cout1[14:1], a[59:4], b[59:4], 1'b1);
  MUX2to1_w4 mux_other_sum[14:1](sum[59:4], sum0[59:4], sum1[59:4], c[14:1]);
  MUX2to1_w1 mux_other_cout[14:1](c[15:2], cout0[14:1], cout1[14:1], c[14:1]);

  RCA4 rca_last_0(sum0[63:60], cout0[15], a[63:60], b[63:60], 0);
  RCA4 rca_last_1(sum1[63:60], cout1[15], a[63:60], b[63:60], 1);
  MUX2to1_w4 mux_last_sum(sum[63:60], sum0[63:60], sum1[63:60], c[15]);
  MUX2to1_w1 mux_last_cout(cout, cout0[15], cout1[15], c[15]);

endmodule