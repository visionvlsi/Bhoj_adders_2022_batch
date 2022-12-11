
// Ripple Carry Adder - 32 bits
module RCA32(output [31:0] sum, output cout, input [31:0] a, b);

  wire [31:1] c;
  
  FA fa0(sum[0], c[1], a[0], b[0], 0);
  FA fa[30:1](sum[30:1], c[31:2], a[30:1], b[30:1], c[30:1]);
  FA fa31(sum[31], cout, a[31], b[31], c[31]);
    
endmodule
