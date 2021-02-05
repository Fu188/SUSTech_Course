`timescale 1ns / 1ps

module Uart_rx_tb(

    );
    
reg clk,rst,uart_rx;
reg [3:0] radio;
wire [20:0]address_ram;
wire [15:0]data;
wire dataflag;

Uart_rx u(clk,rst,16'd1,uart_rx,radio,address_ram,data,dataflag);

initial begin
      clk <= 0;
      rst <= 0;
      radio <= 4'b1000;
      #5 rst <=1;
end
      
always #1 clk <= ~clk; 

always begin
    uart_rx <= 1;
    #10
    uart_rx <= 0; //start
    #4
    uart_rx <= 1;
    #4
    uart_rx <= 0;
    #4
    uart_rx <= 1;
    #4
    uart_rx <= 0;
    #4
    uart_rx <= 1;
    #4
    uart_rx <= 0;
    #4
    uart_rx <= 1;
    #4
    uart_rx <= 1;
    #4
    uart_rx <= 1;//end
end

endmodule
