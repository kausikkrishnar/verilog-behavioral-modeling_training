`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2026 20:33:07
// Design Name: 
// Module Name: counter_32bits
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


module counter_32bits(
    input clk , reset,
    output   out_2,out_4,out_8
    );
    reg [15:0]count;
    always@(posedge clk)
    begin
        if(reset)
            count <= 16'b0000000000000000;
        else
            count <= count + 1'b1;
    
    end
    assign out_2 = count[1] ;
    assign out_4 = count[3] ;
    assign out_8 = count[7] ;
endmodule
