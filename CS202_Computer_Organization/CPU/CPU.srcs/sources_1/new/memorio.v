`timescale 1ns / 1ps

module memorio(caddress, address, memread, memwrite, ioread, iowrite,mread_data, ioread_data, wdata, rdata, write_data, LEDCtrl, SwitchCtrl);
input[31:0] caddress; // from alu_result in executs32
input memread; // read memory, from control32
input memwrite; // write memory, from control32
input ioread; // read IO, from control32
input iowrite; // write IO, from control32
input[31:0] mread_data; // data from memory
input[15:0] ioread_data; // data from io,16 bits
input[31:0] wdata; // the data from idecode32
output[31:0] rdata; // data from memory or IO
output[31:0] write_data; // data to memory or I/O
output[31:0] address; // address to memory
output LEDCtrl; // LED CS
output SwitchCtrl; // Switch CS

reg[31:0] write_data;
wire iorw;
assign address = caddress;
// It may be read from memory or read from io. The data read from io is the lower 16bit of rdata.
assign rdata = (memread==1'b1)? mread_data : {{16'b0},ioread_data};
assign iorw = (iowrite||ioread);
assign LEDCtrl= iowrite; // Led module chip select signal, active high;
assign SwitchCtrl= ioread ; // Chip select signal of switch module, active high;
always @* begin
if((memwrite==1)||(iowrite==1))
//The write operation data to io is written to the lower 16 bits of cwrite_data, and the high 16 bits is 0.
    begin
        write_data = (memwrite == 1) ? wdata : {{16'b0}, wdata[15:0]};
    end
else
    begin
        write_data = 32'haaaaaaaa;
    end
end

endmodule