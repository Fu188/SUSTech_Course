`timescale 1ns / 1ps

module dmemory32(read_data,address,write_data,Memwrite,clock);
input clock;
input[31:0] address;
input[31:0] write_data;
input Memwrite;
output[31:0] read_data;
wire clk;
assign clk = !clock;

RAM ram (
.clka(clk), // input wire clka
.wea(Memwrite), // input wire [0 : 0] wea
.addra(address[15:2]), // input wire [13 : 0] addra
.dina(write_data), // input wire [31 : 0] dina
.douta(read_data) // output wire [31 : 0] douta
);
endmodule
