`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2026 20:39:34
// Design Name: 
// Module Name: counter_32bit_TB
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


module counter_32bit_TB(

    );
    
    reg clk, reset;
    wire out_2,out_4,out_8;
    
    counter_32bits dut(clk , reset,out_2,out_4,out_8);
    
    initial 
    begin
    {reset,clk} = 0;
    end
    
    always # 5 clk = ~clk;
    
    initial begin
    reset = 1;
    #20;
    reset = 0;
    end
    
endmodule
