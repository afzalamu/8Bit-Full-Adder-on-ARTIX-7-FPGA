`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2024 21:48:36
// Design Name: 
// Module Name: addertop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module addertop(O, A, B, CLK, RESET);
  input [7:0]A;
  input [7:0]B;
  output [7:0]O;
  input CLK;
  input RESET;
  
  wire [7:0]P;
  wire [7:0]Q;
  wire [7:0]R;
  
reg8bit reg1(A, CLK, RESET, P);
reg8bit reg2(B, CLK, RESET, Q);
reg8bit reg3(R, CLK, RESET, O);
signedadder adder1(P, Q, R);
endmodule
