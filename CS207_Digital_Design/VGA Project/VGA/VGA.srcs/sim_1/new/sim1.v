`timescale 1ns / 1ps
module sim1();
reg clk;   //时钟
reg rst;   //复位信号
wire [3:0] red;   //红色分量
wire [3:0] green;   //绿色分量
wire [3:0] blue;   //蓝色分量
wire hs;   //行同步信号
wire vs;   //场同步信号
task1 usim(clk,rst,red,green,blue,hs,vs);
initial
begin
    rst = 1;
    clk = 0;     
end
always #1 clk = ~clk;
endmodule
