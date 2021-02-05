`timescale 1ns / 1ps
module task1(clk,rst,red,green,blue,hs,vs);
input clk;   //ʱ��
input rst;   //��λ�ź�
output reg [3:0] red;   //��ɫ����
output reg [3:0] green;   //��ɫ����
output reg [3:0] blue;   //��ɫ����
output hs;   //��ͬ���ź�
output vs;   //��ͬ���ź�

//640*480��ʱ�����
parameter 
            H_SYNC_PULSE = 96,
            H_BACK_PORCH = 48,
            H_ACTIVE_TIME = 640,
            H_FRONT_PORCH = 16,
            H_LINE_PERIOD = 800;
//640*480��ʱ�����
parameter
            V_SYNC_PULSE = 2,
            V_BACK_PORCH = 33,
            V_ACTIVE_TIME = 480,
            V_FRONT_PORCH = 10,
            V_FRAME_PERIOD = 525;
parameter
            BAR_WIDTH = H_ACTIVE_TIME/8,
            clk_divide_cnt = 4;
reg [11:0] h_cnt=0;   //��ʱ�������
reg [11:0] v_cnt=0;   //��ʱ�������
reg [25:0]clk_cnt=0;
reg clk_25M=0;
wire active_flag;

///����25MHz������ʱ��
always @(posedge clk or negedge rst)
begin
    if(!rst)
        begin
            clk_cnt <= 0;
            clk_25M <= 1'b0;
        end
    else if(clk_cnt==(clk_divide_cnt>>1)-1)
        begin
            clk_cnt <= 0;
            clk_25M <= ~clk_25M;
        end
    else clk_cnt <= clk_cnt + 1;
end

///������ʱ��
always @(posedge clk_25M or negedge rst)
begin
    if(!rst)
        h_cnt <= 12'd0;
    else if(h_cnt == H_LINE_PERIOD - 1'b1)
        h_cnt <= 12'd0;
    else h_cnt <= h_cnt + 1'b1;
end
assign hs = (h_cnt<H_SYNC_PULSE)? 1'b0:1'b1;

///������ʱ��
always @(posedge clk_25M or negedge rst)
begin
    if(!rst)
        v_cnt <= 12'd0;
    else if(v_cnt == V_FRAME_PERIOD - 1'b1)
        v_cnt <= 12'd0;
    else if(h_cnt == H_LINE_PERIOD - 1'b1)
        v_cnt <= v_cnt + 1'b1;
    else v_cnt <= v_cnt;
end
assign vs = (v_cnt<V_SYNC_PULSE)?1'b0:1'b1;

assign active_flag = (h_cnt>=(H_SYNC_PULSE+H_BACK_PORCH))&
                     (h_cnt<=(H_SYNC_PULSE+H_BACK_PORCH+H_ACTIVE_TIME))&
                     (v_cnt>=(V_SYNC_PULSE+V_BACK_PORCH))&
                     (v_cnt<=(V_SYNC_PULSE+V_BACK_PORCH+V_ACTIVE_TIME));
                     
///����ʾ����Ϊ8�����У�ÿ�����еĿ��Ϊ80
always @(posedge clk_25M or negedge rst)
begin
    if(!rst)
        begin
            red <= 4'b0000;
            green <= 4'b0000;
            blue <= 4'b0000;
        end
     else if(active_flag)
        begin
            if(h_cnt<(H_SYNC_PULSE + H_BACK_PORCH+BAR_WIDTH)) //��ɫ
                begin
                    red <= 4'b0000;
                    green <= 4'b0000;
                    blue <= 4'b0000;
                end
             else if(h_cnt<(H_SYNC_PULSE + H_BACK_PORCH+2*BAR_WIDTH))  //��ɫ
                begin
                    red <= 4'b1111;
                    green <= 4'b1111;
                    blue <= 4'b1111;
                end
             else if(h_cnt<(H_SYNC_PULSE + H_BACK_PORCH+3*BAR_WIDTH))  //��ɫ
                begin
                    red <= 4'b1111;
                    green <= 4'b0000;
                    blue <= 4'b0000;
                end
             else if(h_cnt<(H_SYNC_PULSE + H_BACK_PORCH+4*BAR_WIDTH))  //��ɫ
                begin
                    red <= 4'b0000;
                    green <= 4'b1111;
                    blue <= 4'b0000;
                end
              else if(h_cnt<(H_SYNC_PULSE + H_BACK_PORCH+5*BAR_WIDTH))  //��ɫ
                begin
                    red <= 4'b0000;
                    green <= 4'b0000;
                    blue <= 4'b1111;
                end
              else if(h_cnt<(H_SYNC_PULSE + H_BACK_PORCH+6*BAR_WIDTH))  //��ɫ
                begin
                    red <= 4'b0000;
                    green <= 4'b1111;
                    blue <= 4'b1111;
                end
              else if(h_cnt<(H_SYNC_PULSE + H_BACK_PORCH+7*BAR_WIDTH))   //��ɫ
                begin
                    red <= 4'b1111;
                    green <= 4'b0000;
                    blue <= 4'b1111;
                end
              else if(h_cnt<(H_SYNC_PULSE + H_BACK_PORCH+8*BAR_WIDTH))   //��ɫ
                begin
                    red <= 4'b1111;
                    green <= 4'b1111;
                    blue <= 4'b0000;
                end
        end
end
endmodule
