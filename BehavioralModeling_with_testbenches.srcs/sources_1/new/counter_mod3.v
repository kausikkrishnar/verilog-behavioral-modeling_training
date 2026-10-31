`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2026 15:09:19
// Design Name: 
// Module Name: counter_mod3
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


module counter_mod3(
    input clk,reset,enable,
    output reg [1:0] count

    );
    
    always@(posedge clk)
    begin
        if(reset)
            count <= 2'b00;
        else if (count <2 && enable==1)
            count<=count+1'b1;
        else if (count==2 && enable ==1)
            count <= 0;
        else if (~enable)
            count<=count;
            
            
    end
            

endmodule
