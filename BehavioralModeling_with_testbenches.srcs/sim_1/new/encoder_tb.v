`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2026 12:27:50
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb(

    );
    reg [3:0] d_tb;
    wire [1:0] y_tb;
    
    encoder dut(d_tb,y_tb);
    
    initial
    begin
    {d_tb} = 4'b0000;
    end
    
    initial
    begin
    d_tb = 4'b0001;
    #1;
    d_tb = 4'b0010;
    #1;
    d_tb = 4'b0100;
    #1;
    d_tb = 4'b1000;
    
    end
endmodule
