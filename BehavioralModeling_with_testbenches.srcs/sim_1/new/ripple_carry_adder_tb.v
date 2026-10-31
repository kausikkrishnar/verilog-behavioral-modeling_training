`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2026 00:36:16
// Design Name: 
// Module Name: ripple_carry_adder_tb
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


module ripple_carry_adder_tb();

    reg [3:0] a_tb,b_tb;
    reg c_in_tb;
    wire [3:0] sum_tb;
    wire carry_out_tb;
    
    ripple_carry_adder dut(a_tb,b_tb,c_in_tb,sum_tb,carry_out_tb);
    
    initial
        begin
        {a_tb,b_tb,c_in_tb} = 9'b000000000;
        end
        
    initial 
        begin
        a_tb = 4'b0110;
        b_tb = 4'b1110;
        c_in_tb = 1'b1;
        $monitor("value of sum_tb = %b and carry_out_tb is %b",sum_tb,carry_out_tb);
        end
        
            
endmodule
