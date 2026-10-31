`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2026 14:37:12
// Design Name: 
// Module Name: counter_mod4
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


module counter_mod4(input clk, reset , enable, output reg [1:0] count

    );
    
    always@(posedge clk)
        begin
            if(reset)
                begin
                count <= 2'b00;
                end
            else if(enable)
                begin
                count <= count + 1'b1;
                end
            else
                begin
                count <= count;
                end
            end
        
endmodule
