`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2026 11:06:14
// Design Name: 
// Module Name: demux
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


module demux(input s, i, output reg[1:0] y);
    always@(*)
     begin
      case (s)
      
      0 : begin
      y[0] = i;
      y[1] = 1'b0;
      end
      
      1 : begin
      y[0] = 1'b0;
      y[1] = i;
      end
      
      default : y = 2'b00;
      
      endcase
      
     end
      
      
    
endmodule
