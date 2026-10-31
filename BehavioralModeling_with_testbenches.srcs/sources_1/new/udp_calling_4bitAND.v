`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2026 04:04:47
// Design Name: 
// Module Name: udp_calling_4bitAND
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


module udp_calling_4bitAND(
    input p,q,r,s,
    output out
    );
    udp_4bit_and a1(out,p,q,r,s);
endmodule
