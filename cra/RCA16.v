
// Ripple Carry Adder - 16 bits
module RCA16(output [15:0] sum, output cout, input [15:0] a, b);
  
  wire [15:1] c;
  
  FA fa0(sum[0], c[1], a[0], b[0], 0);
  FA fa[14:1](sum[14:1], c[15:2], a[14:1], b[14:1], c[14:1]);
  FA fa31(sum[15], cout, a[15], b[15], c[15]);

endmodule
