`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2026 09:38:09
// Design Name: 
// Module Name: mux_2_by_1
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


module mux_2_by_1(input s,input [1:0] i,output reg y);
 always@(*)
 begin
     case(s)
     0 : y = i[0];
     1 : y = i[1];
     default : y  = 1'b0;
     endcase
 end
 
endmodule
