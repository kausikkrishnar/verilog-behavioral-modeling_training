`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2026 04:00:53
// Design Name: 
// Module Name: udp_4bit_and
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


primitive udp_4bit_and(
    output f,
    input a,b,c,d

    );
    table
        // a  b  c  d    f
           0  ?  ?  ?  :  0;
           ?  0  ?  ?  :  0;
           ?  ?  0  ?  :  0;
           ?  ?  ?  0  :  0;
           1  1  1  1  :  1;
    
    endtable
    
endprimitive
