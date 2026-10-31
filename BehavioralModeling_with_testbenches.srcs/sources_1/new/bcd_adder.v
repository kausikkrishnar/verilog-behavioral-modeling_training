`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2026 07:10:58
// Design Name: 
// Module Name: bcd_adder
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


module bcd_adder(input [3:0] a_bcd,b_bcd, input c_in, output [3:0] sum_bcd, output carry_out);
    reg [4:0] temp;
    always@(*)
    begin
    temp = a_bcd+b_bcd+c_in;
        if (temp > 'd9)
            temp = temp + 4'b0110;
        
        else
            temp = temp;
                
    end
    
    assign sum_bcd = temp[3:0];
    assign carry_out = temp[4];
endmodule
