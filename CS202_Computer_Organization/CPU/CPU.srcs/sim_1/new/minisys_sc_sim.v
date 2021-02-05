module minisys_sim(
    );
    // input
    reg clk = 0;
    reg rst = 1;
    reg[23:0] switchs= 24'h00_1234;
    wire[23:0] leds;
    
    minisys_sc u (.clk(clk),.rst(rst),.switch(switchs),.led(leds));
    initial begin
        #7000 rst = 0;
        #6000 switchs = 24'b0010_0000_0001_0010_0011_0100;
        $display("time: %d;\n switch: %b;\n led: %b;\n",$time, switchs, leds);
        #5000 switchs = 24'b0100_0000_0001_0010_0011_0100;
        $display("time: %d;\n switch: %b;\n led: %b;\n",$time, switchs, leds);
        #5000 switchs = 24'b0110_0000_0001_0010_0011_0100;
        $display("time: %d;\n switch: %b;\n led: %b;\n",$time, switchs, leds);
        #5000 switchs = 24'b1010_0000_0001_0010_0011_0100;
        $display("time: %d;\n switch: %b;\n led: %b;\n",$time, switchs, leds);
        #5000 switchs = 24'b1100_0000_0001_0010_0011_0100;
        $display("time: %d;\n switch: %b;\n led: %b;\n",$time, switchs, leds);
        #5000 switchs = 24'b1110_0000_0001_0010_0011_0100;
        $display("time: %d;\n switch: %b;\n led: %b;\n",$time, switchs, leds);
    end
    always #10 clk=~clk;
        
endmodule
