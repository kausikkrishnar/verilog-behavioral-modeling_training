`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2026 20:40:56
// Design Name: 
// Module Name: t_latch
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


module t_latch(input enable,reset, t, output reg q, q_bar);

    always@(enable)
     begin
     if (enable)
         if (reset)
         begin
          q <= 1'b0;
          q_bar<= 1'b1;
         end
         
         else if (t == 0)
         begin 
         q <= q;
         q_bar <= q_bar;
         end
         
         else if (t == 1'b1)
         begin
         q<= ~q;
         q_bar <= ~q_bar ;
         end
     
     end
endmodule
