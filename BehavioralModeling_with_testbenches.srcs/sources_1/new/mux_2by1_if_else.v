`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2026 10:34:49
// Design Name: 
// Module Name: mux_2by1_if_else
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


module mux_2by1_if_else(input s, input [1:0]i, output reg y

    );
    always@(*)
        begin
            if(s == 0)
            y = i[0];
            else if(s==1)
            y = i[1];
            else
            y = 1'b0;
           
        
        end
endmodule
