
// Ripple Carry Adder - 64 bits
module RCA64(output [63:0] sum, output cout, input [63:0] a, b);

  wire [63:1] c;
  
  FA fa0(sum[0], c[1], a[0], b[0], 0);
  FA fa[62:1](sum[62:1], c[63:2], a[62:1], b[62:1], c[62:1]);
  FA fa31(sum[63], cout, a[63], b[63], c[63]);

endmodule