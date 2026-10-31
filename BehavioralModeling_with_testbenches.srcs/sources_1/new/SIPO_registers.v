`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2026 13:21:14
// Design Name: 
// Module Name: SIPO_registers
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


module SIPO_registers(input clck,reset,enable,s_in,output reg [3:0] p_out);

    reg [3:0] temp;
    
    always@(posedge clck)
        begin
        if(reset)
        begin
        temp <= 4'b0000;
        p_out <= 4'b0000;
        end
        else if (enable==0)
        begin
        //loading
        temp <= {s_in,temp[3:1]};
        end
        else if (enable==1)
        begin
        p_out <= temp;
        end
        
        end
      
endmodule
