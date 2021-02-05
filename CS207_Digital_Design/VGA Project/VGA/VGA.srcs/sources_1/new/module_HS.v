`timescale 1ns / 1ps
module module_HS(clk,rst,hs);
input clk,rst;
output hs;
reg [11:0] h_cnt=0;   //行时序计数器
parameter 
            H_SYNC_PULSE = 96,
            H_BACK_PORCH = 48,
            H_ACTIVE_TIME = 640,
            H_FRONT_PORCH = 16,
            H_LINE_PERIOD = 800;
always @(posedge clk or negedge rst)
begin
    if(!rst)
        h_cnt <= 12'd0;
    else if(h_cnt == H_LINE_PERIOD - 1'b1)
        h_cnt <= 12'd0;
    else h_cnt <= h_cnt + 1'b1;
end
assign hs = (h_cnt<H_SYNC_PULSE)? 1'b0:1'b1;
endmodule
