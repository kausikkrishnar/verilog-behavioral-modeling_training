`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2026 00:02:34
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();

    reg a_tb,b_tb,c_tb;
    wire sum_tb,carry_tb;
    
    full_adder dut(a_tb,b_tb,c_tb,sum_tb,carry_tb);
    
    initial 
    begin
        {a_tb,b_tb,c_tb} = 3'b000;
    end
    
    initial
    begin
    $monitor("a_tb = %b,b_tb = %b,c_tb = %b,sum_tb = %b,carry_tb=%b",a_tb,b_tb,c_tb,sum_tb,carry_tb);
    a_tb = 0;
    b_tb = 0;
    c_tb = 0; 
    
    #1;
    a_tb = 0;
    b_tb = 0;
    c_tb = 1;
    
    #1;
    a_tb = 0;
    b_tb = 1;
    c_tb = 0;
    
    #1;
    a_tb = 0;
    b_tb = 1;
    c_tb = 1;
    
    #1;
    a_tb = 1;
    b_tb = 0;
    c_tb = 0;
    
    #1;
    a_tb = 1;
    b_tb = 0;
    c_tb = 1;
    
    #1;
    a_tb = 1;
    b_tb = 1;
    c_tb = 0;
    
    #1;
    a_tb = 1;
    b_tb = 1;
    c_tb = 1;
    end    
    
endmodule
