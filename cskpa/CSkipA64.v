
// Carry Skip Adder - 64 bits
module CSkipA64(output [63:0] sum, output cout, input [63:0] a, b);
  
  wire [15:0] couts;
  wire [14:0] e;
  
  RCA4 rca0(sum[3:0], couts[0], a[3:0], b[3:0], 0);
  RCA4 rca[15:1](sum[63:4], couts[15:1], a[63:4], b[63:4], e[14:0]);
  
  SkipLogic skip0(e[0], a[3:0], b[3:0], 0, couts[0]);
  SkipLogic skip[14:1](e[14:1], a[59:4], b[59:4], e[13:0], couts[14:1]);
  SkipLogic skip15(cout, a[63:60], b[63:60], e[14], couts[15]);
  
endmodule