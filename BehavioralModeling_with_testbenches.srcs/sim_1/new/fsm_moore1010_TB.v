`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2026 23:56:24
// Design Name: 
// Module Name: fsm_moore1010_TB
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


module fsm_moore1010_TB(

    );
    
    reg clk,reset,d_in;
    wire detected;
    
    fsm_moore_1010 dut(clk,reset,d_in,detected);
    
    initial
    begin
        {clk,reset,d_in} = 3'b000;
    end
    
    always #5 clk = ~clk;
    
    initial
     begin
        reset = 1'b0;
        #10;
        reset = 1'b0;
        #10;
        d_in = 1'b1;
        #10;
        d_in = 1'b0;
        #10;
        d_in = 1'b1;
        #10;
        d_in = 1'b0;
        #10;
        d_in = 1'b1;
        #10;
        d_in = 1'b0;
        #10;
        d_in = 1'b0;
        #10;
        d_in = 1'b01;
         #10;
        d_in = 1'b0;
        #10;
        d_in = 1'b1;
        #10;
        d_in = 1'b0;
        #10;
     end
     
    
endmodule
