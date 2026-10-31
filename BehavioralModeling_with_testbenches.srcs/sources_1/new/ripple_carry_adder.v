`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2026 00:16:27
// Design Name: 
// Module Name: ripple_carry_adder
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


module ripple_carry_adder(input [3:0] a_rca,b_rca, input c_in , output [3:0] sum, output carry_out);
    wire w1,w2,w3;
    full_adder a_1(a_rca[0],b_rca[0],c_in,sum[0],w1);
    full_adder a_2(a_rca[1],b_rca[1],w1,sum[1],w2);
    full_adder a_3(a_rca[2],b_rca[2],w2,sum[2],w3);
    full_adder a_4(a_rca[3],b_rca[3],w3,sum[3],carry_out);
endmodule
