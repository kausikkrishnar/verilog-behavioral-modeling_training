`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2026 18:59:47
// Design Name: 
// Module Name: freq_div_3_50dutyCycle
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


module freq_div_3_50dutyCycle(
    input clk,reset,enable,
    output f_3
    );
    reg [1:0] count;
    
    reg enable_1,enable_2;
    
    always@(posedge clk)
     begin
        if(reset)
         begin
            count <= 2'b00;
            enable_1 <= 1'b0;
            enable_1 <= 1'b0;
     end
        else if(enable)
            begin
                if (count == 2'b10)
                    count <= 0;
                else 
                    count <= count+1'b1;
            end
     end
     
     always@(posedge clk)
      begin
        if(count==2'b00)
            enable_1 <= 1'b1;
        else
            enable_1 <= 1'b0;
       end
            
     always@(negedge clk)
      begin
        if(count==2'b00)
            enable_2 <= 1'b1;
        else
            enable_2 <= 1'b0;
        
      end
      
     
     assign f_3 = enable_1 | enable_2;
endmodule
