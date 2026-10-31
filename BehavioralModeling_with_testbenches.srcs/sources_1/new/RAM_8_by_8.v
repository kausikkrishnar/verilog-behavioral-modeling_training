`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2026 00:02:51
// Design Name: 
// Module Name: RAM_8_by_8
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


module RAM_8_by_8(
    input clk, reset, w_enable,
    input [2:0] w_add, r_add,
    input [7:0] data_in,
    output reg [7:0] data_out
    );
    
    //creating an internal memory
    
    reg [7:0] memory [7:0];
    integer i;
    
    //write read
    always@(posedge clk or posedge reset)
    begin
        if(reset)
            begin
            for(i = 0; i< 8;i= i+1)
                memory [i]<= 8'b00000000;
                data_out <= 8'b00000000;
            end
        else 
            if(w_enable)
                memory[w_add]<=data_in;
            else 
                data_out <= memory[r_add];
    end
endmodule
