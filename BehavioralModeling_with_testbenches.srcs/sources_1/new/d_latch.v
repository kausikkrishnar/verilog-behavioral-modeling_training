`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2026 19:41:54
// Design Name: 
// Module Name: d_latch
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


module d_latch(input enable,reset, d ,output reg q,q_bar);
    always@(enable)
        begin
            if(!enable)
                if(reset)
                begin
                q <= 1'b0;
                q_bar <= 1'b1;
                end
                else
                begin
                q <= d;
                q_bar<= ~d;
                end
            
         end
        
endmodule
