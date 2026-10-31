`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2026 12:28:38
// Design Name: 
// Module Name: freq_2_div_TB
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


module freq_2_div_TB(

    );
    reg clk,reset;
    wire f_2;
    
    freq_2_ckt dut(clk,reset,f_2);
    
    initial begin 
    {clk, reset} = 0;
    end
    
    always #5 clk = ~clk;
     initial
     begin
     
     reset  = 1'b1;
     #10;
    
     reset = 1'b0;
     
     
     end
    
endmodule
