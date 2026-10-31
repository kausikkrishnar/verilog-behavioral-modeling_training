`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2026 23:30:07
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb();
    //declaaring variables
    reg a_tb, b_tb;
    wire sum_tb, carry_tb;
    //instantiation of design(Half adder)
    Half_adder dut1(a_tb,b_tb,sum_tb,carry_tb);
    // initialization of variables
    initial
        begin
        {a_tb,b_tb} = 2'b00;
        end
     //driving input values
    initial
        begin
        
        $monitor("value of  a_tb is %b and vale of b_tb is %b, sum_tb is %b, carry _tb is %b",a_tb,b_tb,sum_tb,carry_tb);
        a_tb = 0;
        b_tb = 0;
        
        #1;
        a_tb = 0;
        b_tb = 1;
        
        #1;
        a_tb = 1;
        b_tb = 1;
        
        #1;
        a_tb = 1;
        b_tb = 0;
        end
        
endmodule
