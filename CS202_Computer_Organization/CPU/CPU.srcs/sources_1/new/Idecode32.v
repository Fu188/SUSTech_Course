`timescale 1ns / 1ps

module Idecode32(read_data_1,read_data_2,Instruction,read_data,ALU_result,Jal,RegWrite,MemtoReg,RegDst,Sign_extend,clock,reset, opcplus4);
output wire[31:0] read_data_1; // the first output data while read
output wire[31:0] read_data_2; // the second output data while read
output wire[31:0] Sign_extend; // the output of decode unit which the extended 32bit-width instance data
input[31:0] Instruction; // the instrution from fetch instruction unit
input[31:0] read_data; // the data read from DATA RAM or I/O port
input[31:0] ALU_result; // the alu result from excutation unit,need to extend to 32 bit-width
input Jal; // from control unit, 1 mean current instruction is JAL
input RegWrite; // from control unit
input MemtoReg; // from control unit
input RegDst; // from control unit
input clock,reset; // clock and reset
input[31:0] opcplus4; // from fetch unit, used in JAL
reg [31:0] reg_data [0:31];
reg [31:0] write_data;
reg [4:0] write_address;
wire [4:0] r1_address;
wire [4:0] r2_address;
wire [4:0] w1_address;  // r-form 指令要写的寄存器
wire [4:0] w2_address;  // i-form 指令要写的寄存器
wire [15:0] immediate;
wire [5:0] opcode;

assign r1_address = Instruction[25:21];
assign r2_address = Instruction[20:16];
assign opcode = Instruction[31:26];
assign w1_address = Instruction[15:11];
assign w2_address = Instruction[20:16];
assign immediate = Instruction[15:0];

assign Sign_extend = (opcode == 6'hc | opcode == 6'hd) ? {{16{1'b0}},immediate} : {{16{Instruction[15]}}, immediate};
assign read_data_1 = reg_data[r1_address];
assign read_data_2 = reg_data[r2_address];

//指定不同指令下的目标寄存器
always @(*)
begin  
    if (~Jal)
        begin
            if (RegDst)
                write_address = w1_address;
            else
                write_address = w2_address;
        end
    else
        write_address = 5'b11111;
end

//多路选择器,准备要写的数据
always @(*) 
begin  
    if (Jal)
        write_data = opcplus4;
    else 
        begin
            if (MemtoReg)
                write_data = read_data;
            else
                write_data = ALU_result;
        end
end

integer i;
always @(posedge clock or negedge reset)
begin       
    if(reset==1)
        begin              // 初始化寄存器组
            for(i=0;i<32;i=i+1) reg_data[i] <= 0;
        end
    else if(RegWrite==1) begin  
        if (write_address)
            begin
                reg_data[write_address] = write_data;
            end
        else 
            reg_data[write_address] = 0;
    end
end


endmodule
