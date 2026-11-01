`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2026 23:16:33
// Design Name: 
// Module Name: d_flipflop_TB
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


module d_flipflop_TB(

    );
    
    reg d,clk,reset,enable;
    wire q;
    
    d_flipflop dut(d,clk,reset,enable,q);
    
    always #5 clk  = ~clk;
    
    initial begin
    {d,clk,reset,enable} = 0;
    end
    
    initial begin
    
    reset = 1'b1;
    
    enable = 1'b1;
    #16;
    reset = 1'b0;
    #10;
    d = 1'b1;
    #36;
    d = 1'b0;
    #8;
    d = 1'bx;
    end
    
    
endmodule
