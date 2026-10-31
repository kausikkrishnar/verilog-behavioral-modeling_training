`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2026 03:14:26
// Design Name: 
// Module Name: generate_fn_XOR_bitwise
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


module generate_fn_XOR_bitwise(a,b,f);
    parameter n = 8;
    input [n-1:0] a ,b;
    output [n-1:0] f;
    genvar p;
    generate 
        for(p=0;p<n;p=p+1)
            begin 
                xor XG(f[p],a[p],b[p]);
            end
    endgenerate        
endmodule
