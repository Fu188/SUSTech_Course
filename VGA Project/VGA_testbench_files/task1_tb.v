`timescale 1ns / 1ps

module task1_tb(

    );
reg clk,rst,screensaver;
wire [3:0] red;
wire [3:0] green;
wire [3:0] blue;
wire hs;
wire vs;

Task1 u(clk,rst,red,green,blue,hs,vs,screensaver);

initial begin
   clk <= 0;
   rst <= 0;
   screensaver <= 0;
   #5 rst <= 1;
   #5 screensaver <= 1;
end

always #1 clk <= ~clk;

endmodule