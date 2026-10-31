`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2026 13:33:15
// Design Name: 
// Module Name: freq_4_TB
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


module freq_4_TB(

    );
    reg clk,reset;
    wire f_4;
    
    freq_4 dut(clk,reset,f_4);
    
    initial
    begin
    {clk, reset}= 2'b00;
    end
    
    always #5 clk = ~clk;
    
    initial begin
    reset = 1;
    #14;
    reset = 0;
    
    #35;
    reset = 1;
    #10;
    reset = 0;
    end
    
endmodule
