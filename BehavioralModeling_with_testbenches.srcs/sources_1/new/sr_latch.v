`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2026 21:58:31
// Design Name: 
// Module Name: sr_latch
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


module sr_latch(input enable,rst,s,r, output reg q,q_bar

    );
    //synchronous reset logic
    always@(enable)
    begin
    if(enable)
        if(rst)begin
        q <= 1'b0;
        q_bar<= 1'b1;
        end
        
        else if (s == 0 && r == 0)
        begin
        q <= q;
        q_bar<= q_bar;
        end
        
        else if (s == 0 && r == 1)
        begin
        q <= 1'b0;
        q_bar<= 1'b1;
        end
        
        else if (s == 1 && r == 0)
        begin
        q <= 1'b1;
        q_bar<= 1'b0;
        end
        
        else if (s == 1 && r == 1)
        begin
        q <= 1'bx;
        q_bar<= 1'bx;
        end
        
    
    end
endmodule
