`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2026 15:48:45
// Design Name: 
// Module Name: freq_div_3_TB
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


module freq_div_3_TB(

    );
 reg clk, reset, enable;
    wire f_3;
    
    freq_div_3 dut(clk,reset,enable,f_3);
    initial begin
        {clk, reset,enable } = 3'b000;
   end
   
   always #5 clk = ~clk;
   initial
   begin
    reset = 1;
    #100
    reset = 0;
    enable = 1;
    #150;
    enable = 0;
    
   
   end
endmodule
