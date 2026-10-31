`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2026 12:21:22
// Design Name: 
// Module Name: encoder
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


module encoder(input [3:0] d, output reg [1:0] y 

    );
    always@(*)
    begin
    if (d == 4'b0001)
    y = 2'b00;
    else if (d == 4'b0010)
    y = 2'b01;
    else if (d == 4'b0100)
    y = 2'b10;
    else if (d == 4'b1000)
    y = 2'b11;
    end
endmodule
