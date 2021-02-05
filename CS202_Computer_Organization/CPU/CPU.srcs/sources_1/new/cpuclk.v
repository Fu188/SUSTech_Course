`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/16 13:43:00
// Design Name: 
// Module Name: cpuclk
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


module cpuclk(clk_in1,clk_out1);
input clk_in1;
output clk_out1;
cpuclk cpuclk (
.clk_in1(clk_in1),
.clk_out1(clk_out1));
endmodule
