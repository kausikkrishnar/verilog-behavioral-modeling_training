`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2026 09:49:20
// Design Name: 
// Module Name: mux_2_by_1_tb
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


module mux_2_by_1_tb();

 reg s_tb;
 reg [1:0] i_tb;
 wire y_tb;
 integer m;
 
 mux_2_by_1 dut(s_tb,i_tb,y_tb);
 
 initial
    begin
        {s_tb,i_tb}= 3'b000;
    end
// initial
//    begin
//        s_tb = 0;
//        i_tb = 2'b00;
//        #1;
//        s_tb = 0;
//        i_tb = 2'b01;
//        #1;
//        s_tb = 0;
//        i_tb = 2'b10;
//        #1;
//        s_tb = 0;
//        i_tb = 2'b11;
        
//        #1;
//        s_tb = 1;
//        i_tb = 2'b00;
//        #1;
//        s_tb = 1;
//        i_tb = 2'b01;
//        #1;
//        s_tb = 1;
//        i_tb = 2'b10;
//        #1;
//        s_tb = 1;
//        i_tb = 2'b11;
//    end


// **************** using for loop

    initial
    begin
    for(m=0;m<8;m=m+1)
        begin
        
        {s_tb,i_tb} = m;
        #1;
        end
        $monitor("y = %d",y_tb);
    end     
endmodule
