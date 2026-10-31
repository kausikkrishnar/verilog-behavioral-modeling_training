`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2026 20:48:05
// Design Name: 
// Module Name: t_latch_TB
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


module t_latch_TB();
    reg enable,reset, t;
    wire q, q_bar;
    t_latch dut(enable,reset, t, q, q_bar);
    initial 
    begin
    {enable,reset, t} =3'b000;
    end
    always #5 enable = ~enable;
    initial 
    begin
    reset = 1;
    #10;
    reset = 0;
    #10;
    t = 1;
    #10;
    t = 0;
    end
endmodule
