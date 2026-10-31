`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2026 12:32:04
// Design Name: 
// Module Name: SISO_register
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


module SISO_register(input clk, enable,reset,s_in, output reg s_out);

 reg [3:0] temp;
 //*****using shift registers
// always@(posedge clk)
// begin
 
// if (reset)
// begin
// temp <= 4'b0000;
// s_out <= 1'b0;
// end
// else if (enable)
// begin
// temp <= temp>>1'b1;
// temp[3] <= s_in; 
// s_out <= temp[0];
// end
 
// end
 
 
 
 //******using concatenation(best way)
 
 always@(posedge clk)
    begin
    if(reset)
    begin
    temp <= 4'b0000;
    s_out <= 1'b0;
    end
    else if (enable)
    begin
    temp<= {s_in,temp[3:1]};
    //left shift temp<= {temp[2:0],s_in};
    s_out<= temp[0];
    end
    end
    
 
endmodule
