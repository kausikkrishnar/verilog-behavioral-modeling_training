`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2026 19:29:51
// Design Name: 
// Module Name: freq_div3_50DutyCycle
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



module freq_div3_50DutyCycle_TB(

    );
 reg clk, reset, enable;
    wire f_3;
    
    freq_div_3_50dutyCycle dut(clk,reset,enable,f_3);
    initial begin
        {clk, reset,enable } = 3'b000;
   end
   
   always #5 clk = ~clk;
   initial
   begin
    reset = 1;
    #10
    reset = 0;
    enable = 1;
    #150;
    
    
   
   end
endmodule