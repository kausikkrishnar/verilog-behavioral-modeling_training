`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2026 16:47:10
// Design Name: 
// Module Name: multiple_event_counter
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


module multiple_event_counter(
    input clk,reset,enable,
    input [1:0] mode,
    output reg mode2_count,
    output reg [1:0] mode4_count,
    output reg [2:0] mode8_count,
    output reg [3:0] mode16_count
    );
    
    
    always@(posedge clk)
        begin
            if (reset)
                begin
                 mode2_count <= 1'b0;
                 mode4_count <= 2'b00;
                 mode8_count <= 3'b000;
                 mode16_count <= 4'b0000;
                end
            else if(enable)
                 begin
                 case(mode)
                 2'b00: mode2_count <= mode2_count+1'b1;
                 2'b01: mode4_count <= mode4_count+1'b1;
                 2'b10: mode8_count <= mode8_count+1'b1;
                 2'b11: mode16_count <= mode16_count+1'b1;
                 default: ;
                 endcase
                 end
        end
endmodule
