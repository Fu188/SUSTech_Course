`timescale 1ns / 1ps
module sim_clk( );
reg clk,rst;
wire clk_25M;
module_clk_25MHz usim(clk,rst,clk_25M);
initial
begin
    rst <= 0;
    clk <= 0;
    #10 rst <= 1;
end
always #10 clk <= ~clk;
endmodule
