`timescale 1ns / 1ps
module sim1();
reg clk;   //ʱ��
reg rst;   //��λ�ź�
wire [3:0] red;   //��ɫ����
wire [3:0] green;   //��ɫ����
wire [3:0] blue;   //��ɫ����
wire hs;   //��ͬ���ź�
wire vs;   //��ͬ���ź�
task1 usim(clk,rst,red,green,blue,hs,vs);
initial
begin
    rst = 1;
    clk = 0;     
end
always #1 clk = ~clk;
endmodule
