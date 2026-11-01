`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2026 23:07:21
// Design Name: 
// Module Name: d_flipflop
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


module d_flipflop(
    input d,clk,reset,enable,
    output reg q
    );
    
    always@(posedge clk)
    begin
     if (reset)
        q <= 1'b0;
     else if(enable)
        q <= d ; 
        
    end
    
endmodule
