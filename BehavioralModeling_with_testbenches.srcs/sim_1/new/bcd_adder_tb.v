`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2026 07:17:42
// Design Name: 
// Module Name: bcd_adder_tb
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


module bcd_adder_tb();

    reg [3:0] a, b;
    reg c_in;
    wire [3:0] sum;
    wire c_out;
    
    bcd_adder dut(a,b,c_in,sum,c_out);
    
    initial 
        begin
        {a,b,c_in} = 9'b000000000;
        end
        
    initial 
    begin
     a= 4'b0110;
     b = 4'b0010;
     c_in = 1'b1;
     end
        
endmodule
