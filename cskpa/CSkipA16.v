
// Carry Skip Adder - 16 bits
module CSkipA16(output [15:0] sum, output cout, input [15:0] a, b);
  
  wire [3:0] couts;
  wire [2:0] e; 
  
  RCA4 rca0(sum[3:0], couts[0], a[3:0], b[3:0], 0);
  RCA4 rca[3:1](sum[15:4], couts[3:1], a[15:4], b[15:4], e[2:0]);
  
  SkipLogic skip0(e[0], a[3:0], b[3:0], 0, couts[0]);
  SkipLogic skip[2:1](e[2:1], a[11:4], b[11:4], e[1:0], couts[2:1]);
  SkipLogic skip3(cout, a[15:12], b[15:12], e[2], couts[3]);

endmodule
