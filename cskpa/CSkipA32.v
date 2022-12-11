
// Carry Skip Adder - 32 bits
module CSkipA32(output [31:0] sum, output cout, input [31:0] a, b);
  
  wire [7:0] couts;
  wire [6:0] e;
  
  RCA4 rca0(sum[3:0], couts[0], a[3:0], b[3:0], 0);
  RCA4 rca[7:1](sum[31:4], couts[7:1], a[31:4], b[31:4], e[6:0]);
  
  SkipLogic skip0(e[0], a[3:0], b[3:0], 0, couts[0]);
  SkipLogic skip[6:1](e[6:1], a[27:4], b[27:4], e[5:0], couts[6:1]);
  SkipLogic skip7(cout, a[31:28], b[31:24], e[6], couts[7]);

endmodule
