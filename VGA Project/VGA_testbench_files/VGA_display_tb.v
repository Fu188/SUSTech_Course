`timescale 1ns / 1ps

module VGA_display_tb(

    );
reg CLK_25M,CLK_100M,rst,stretch;
wire [11:0]x_cnt;
wire [11:0]y_cnt;
reg [15:0]data_out;
reg sw_right,sw_left,sw_up,sw_down,return;
reg [3:0] radio;
wire vs;
wire [20:0]address_pic;
wire [11:0]data;
wire [7:0] DIG;
wire [7:0] Y;

VGA_Paint u_paint(.Clk(CLK_25M),.rst(rst),.x_cnt(x_cnt),.y_cnt(y_cnt),.vs(vs));
VGA_Display u_display( CLK_100M,CLK_25M,rst,x_cnt,y_cnt,data_out,sw_left,sw_right,sw_up,sw_down,return,vs,radio,stretch,address_pic,data,DIG,Y);

initial begin
      CLK_100M <=0;
      CLK_25M <= 0;
      rst <= 0;
      sw_left <= 0;
      sw_right <= 0;
      sw_up <= 0;
      sw_down <= 0;
      return <= 0;
      stretch <= 0;
      radio <= 4'b1000;
end
      
always #1 CLK_100M <= ~CLK_100M; 
always #4 CLK_25M <= ~CLK_25M;
  
endmodule


