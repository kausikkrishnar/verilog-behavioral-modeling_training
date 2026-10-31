`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2026 15:16:37
// Design Name: 
// Module Name: counter_mod3_TB
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


module counter_mod3_TB(

    );
    
    reg clk, reset, enable;
    wire [1:0] count;
    
    counter_mod3 dut(clk,reset,enable,count);
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
