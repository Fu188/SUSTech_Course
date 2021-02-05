`timescale 1ns / 1ps
module sim_hs( );
reg clk,rst;
wire hs;
module_HS usim(clk,rst,hs);

initial
begin
    clk = 0;
    rst = 0;
    #10 rst = 1;
    repeat(10000) #10 clk = ~clk;
end
endmodule
