`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2026 19:58:02
// Design Name: 
// Module Name: d_latch_TB
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


module d_latch_TB();
    reg enable,reset,d;
    wire q,q_bar;
    
    d_latch dut(enable,reset, d , q,q_bar);
    
    initial 
        begin
        {enable,reset, d} = 3'b000;
        end
     always #5 enable = ~ enable;
     
     initial 
        begin
        reset = 1;
        #15;
        reset = 0;
        #5;
        d=1;
        #10;
        d =0;
        end   
    
endmodule
