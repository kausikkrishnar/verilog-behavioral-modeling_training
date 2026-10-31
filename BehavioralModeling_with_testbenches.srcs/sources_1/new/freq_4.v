`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2026 13:01:29
// Design Name: 
// Module Name: freq_4
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


module freq_4(
    input clk,reset,
    output f_4

    );
    reg [1:0] count;
    always@(posedge clk)
        begin
            if(reset)
                count <= 2'b00;
            else
                count<= count+ 1'b1;
             
        end
        
    assign f_4 = count[1];
        
    
endmodule
