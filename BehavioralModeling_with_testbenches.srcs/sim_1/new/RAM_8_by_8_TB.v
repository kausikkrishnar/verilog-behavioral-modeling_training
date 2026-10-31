`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2026 12:55:53
// Design Name: 
// Module Name: RAM_8_by_8_TB
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


module RAM_8_by_8_TB(

    );
    reg clk, reset, w_enable;
    reg [2:0] w_add, r_add;
    reg [7:0] data_in;
    wire [7:0] data_out;
    
    RAM_8_by_8 dut( clk, reset, w_enable,w_add, r_add,data_in,data_out);
    
    initial
     begin
        {clk, reset, w_enable, w_add, r_add,data_in}= 0;
     end
     
     always #5 clk = ~clk;
    initial
     begin
        reset = 1'b1;
        #10;
        reset = 1'b0;
        
        w_enable = 1'b1;
        w_add = 3'b100;
        data_in = 8'b10110110;
        #6
        w_enable = 1'b0;
        #5;
        r_add = 3'b100;
        #10;
        reset = 1'b1;
        #10;
        
        
     end
     
     
endmodule
