`timescale 1ns / 1ps
module module_clk_25MHz(clk,rst,clk_25M);
input clk,rst;
output reg clk_25M;
reg [25:0]clk_cnt=0;
parameter clk_divide_cnt = 4;
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
endmodule
