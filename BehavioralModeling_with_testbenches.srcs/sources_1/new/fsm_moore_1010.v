`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2026 23:45:47
// Design Name: 
// Module Name: fsm_moore_1010
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


// sequence detector (4 states) 1010
module fsm_moore_1010(
    input clk,reset,d_in,
    output reg detected

    );
    
    parameter idle = 3'b000;
    parameter s1   = 3'b001;
    parameter s2   = 3'b010;
    parameter s3   = 3'b011;
    parameter s4   = 3'b100;
    
    // internal register new_state, present_state
    reg [2:0] ns,ps;
    
    //present state
    always@(posedge clk) 
    begin
        if(reset)
         begin
            ps<= idle;
         end
        else
         begin
            ps<=ns;
         end
    end
         
     //next state
     always@(*)
      begin
        case(ps)
        idle : begin
            if(d_in==1'b1)
                ns<=s1;
            else 
                ns<=idle;
               end
               
        s1 : begin
            if(d_in == 1'b0)
                ns<=s2;
            else
                ns<=s1;
                end
        
         s2 : begin
            if(d_in == 1'b1)
                ns<=s3;
            else
                ns<=idle;
                end
                
         s3 : begin
            if(d_in == 1'b0)
                ns<=s4;
            else
                ns<=s1;
                end
                
         s4 : begin
            if(d_in == 1'b0)
                ns<=idle;
            else
                ns<=s1;
                end
         default : ns<= idle;
         
         endcase
       end
       
       
       always@(posedge clk)
       begin
            if(reset)
                detected <= 1'b0;
            else
                case(ps)
                idle: detected <= 1'b0;
                s1  : detected <= 1'b0;
                s2  : detected <= 1'b0;
                s3  : detected <= 1'b0;
                s4  : detected <= 1'b1;
                
                default : detected <= 1'b0;
                endcase  
       end 
       //   output as combinational
//       always @(*) begin
//    if (ps == s4)
//        detected = 1'b1;
//    else
//        detected = 1'b0;
//end     
endmodule

