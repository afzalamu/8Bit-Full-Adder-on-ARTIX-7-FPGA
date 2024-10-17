`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2024 21:52:02
// Design Name: 
// Module Name: addertop_tb
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

module addertop_tb( );

reg CLK;
reg [7:0] A, B;
reg RESET;
wire [7:0] O;


addertop dut(O, A, B, CLK, RESET);

// Clock generation
  
initial begin
    RESET = 1;
    #10;
    RESET = 0;
    CLK = 1;
    forever #5 CLK = ~CLK;  // 10ns period
  end
  
initial begin 

A = 8'd0;
B = 8'd0;
#10;
A = 8'b0_010_0000; //0.25
B = 8'b0_010_0000; //0.25
#10;
A = 8'b0_010_0000; //0.25
B = 8'd0;
#10;
A = 8'd0;
B = 8'b0_010_0000;
#10;
A = 8'hE0; //-0.25
B = 8'hE0;// -0.25
#10;
A = 8'hE0; //-0.25
B = 8'h20; //0.25
#10;
A = 8'hA0; //-0.25
B = 8'hA0; //-0.25
#50 $finish;
end

initial begin
    $monitor("At time %t: A = %d, B = %d, O = %d", $time, A, B, O);
end


endmodule

