`timescale 1ns / 1ps

module task2_tb(

    );

  reg clk;
  reg rst;   
  reg [3:0] radio; 
  reg sw_left;
  reg sw_right;
  reg sw_up;
  reg sw_down;   
  reg return;  
  reg screensaver;  
  reg stretch;
  wire [3:0] red;   
  wire [3:0] green;   
  wire [3:0] blue;   
  wire hs;   
  wire vs;  
  wire [7:0] DIG; 
  wire[7:0] Y;
  
  Task2_4  u(clk,rst,radio,sw_left,sw_right,sw_up,sw_down,return,screensaver,stretch,red,green,blue,hs,vs,DIG,Y);
  
  initial
      begin
          clk <= 0;
          rst <= 0;
          radio <= 4'b1000;
          sw_left <= 0;
          sw_right <= 0;
          sw_up <= 0;
          sw_down <= 0;
          return <= 0;
          screensaver <= 0;
          stretch <= 0;
          #5 rst <=1;
      end
      
  initial
    begin
        #300000
        stretch <= 1;
        #1000
        stretch <= 0;
    end

  initial
    begin
        #302000
        screensaver <= 1;
        #1000
        screensaver <= 0;
    end
    
  initial
      begin
          #304000
          sw_left <= 1;
          #1000
          sw_left <= 0;
      end

    
  always #1 clk <= ~clk; 
  
  endmodule
  