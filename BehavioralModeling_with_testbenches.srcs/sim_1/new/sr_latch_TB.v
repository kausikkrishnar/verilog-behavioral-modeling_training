`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2026 22:12:01
// Design Name: 
// Module Name: sr_latch_TB
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


module sr_latch_TB( );

  reg s,r,reset,enable;
  wire q,q_bar;
  
  sr_latch dut(enable,reset,s,r,q,q_bar);
  
  initial
  begin
  
  {s,r,reset,enable} = 0;
  end
  
  //generate enable signal
  always #5 enable  = ~enable;
  
  initial
   begin
  
  reset = 1;
  #5 reset = 0;
  // hold
  s = 0;
  r = 0;
  //set
  #10;
  s = 1;
  r = 0;
  //reset
  #10;
  s= 0;
  r = 1;
  //invalid
  #10 
  s = 1;
  r  = 1;
  
  
  end
  


endmodule
