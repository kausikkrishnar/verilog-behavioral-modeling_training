`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2026 12:15:32
// Design Name: 
// Module Name: freq_2_ckt
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


module freq_2_ckt(
    input clk,reset,
    output reg f_2
    );
    
    always@(posedge clk)
    begin
        if(reset)
            f_2 <= 0;
        else
            f_2 <= ~f_2;   
     end      
endmodule
