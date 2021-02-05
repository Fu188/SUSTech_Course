`timescale 1ns / 1ps

module VGA_paint_tb(

    );

reg clk,rst;
wire [11:0]x_cnt;
wire [11:0]y_cnt;
wire hs,vs;

VGA_Paint u(clk,rst,x_cnt,y_cnt,hs,vs);

initial begin
      clk <= 0;
      rst <= 0;
      #5 rst <=1;
end
      
always #1 clk <= ~clk; 
  
endmodule