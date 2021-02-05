`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/27 12:02:07
// Design Name: 
// Module Name: cpu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module cpu(clk,rst,switch2N4,led2N4);
input clk;
input rst;
input[23:0] switch2N4;
output [23:0] led2N4;

wire clock;
wire [31:0]Instruction; 
wire [31:0]PC_plus_4_out;
wire [31:0]Add_Result; 
wire [31:0]Read_data_1; 
wire Branch,nBranch,Jmp,Jal,Jrn,Zero;
wire [31:0]opcplus4;

wire [31:0] Read_data_2; 
wire [31:0] read_data;
wire RegWrite; 
wire RegDst; 
wire [31:0]Sign_extend;

wire ALUSrc; 
wire MemorIOtoReg; 
wire MemRead; 
wire MemWrite;
wire IORead;
wire IOWrite;
wire I_format;
wire Sftmd;
wire [1:0]ALUOp;

wire [4:0]Shamt;
wire [31:0]ALU_Result; 
wire[31:0] read_data_fromMemory; 
wire[31:0] address; 
wire[31:0] write_data; 
wire [15:0]ioread_data;
wire switchcs;
wire [1:0]switchaddr; 
wire [15:0]switchrdata; 
wire [23:0]switch_i;

wire ledcs;
wire [1:0]ledaddr; 

cpuclk cpuclk(
    .clk_in1(clk),
    .clk_out1(clock)
);

Ifetc32 ifetch(
    .Instruction(Instruction),
    .PC_plus_4_out(PC_plus_4_out),
    .Add_result(Add_Result),
    .Read_data_1(Read_data_1),
    .Branch(Branch),
    .nBranch(nBranch),
    .Jmp(Jmp),
    .Jal(Jal),
    .Jrn(Jrn),
    .Zero(Zero),
    .clock(clock),
    .reset(rst),
    .opcplus4(opcplus4)
);

Idecode32 idecode(
    .read_data_1(Read_data_1),
    .read_data_2(Read_data_2),
    .Instruction(Instruction),
    .read_data(read_data),
    .ALU_result(ALU_Result),
    .Jal(Jal),
    .RegWrite(RegWrite),
    .MemtoReg(MemorIOtoReg),
    .RegDst(RegDst),
    .Sign_extend(Sign_extend),
    .clock(clock),
    .reset(rst),
    .opcplus4(opcplus4)
);

control32 control(
    .Opcode(Instruction[31:26]),    
    .Function_opcode(Instruction[5:0]),
    .Alu_resultHigh(ALU_Result[31:10]),
    .Jrn(Jrn),
    .RegDST(RegDst),
    .ALUSrc(ALUSrc),
    .MemorIOtoReg(MemorIOtoReg),
    .RegWrite(RegWrite),
    .MemRead(MemRead),
    .MemWrite(MemWrite),
    .IORead(IORead),
    .IOWrite(IOWrite),
    .Branch(Branch),
    .nBranch(nBranch),
    .Jmp(Jmp),
    .Jal(Jal),
    .I_format(I_format),
    .Sftmd(Sftmd),
    .ALUOp(ALUOp)
);

Executs32 execute(
    .Read_data_1(Read_data_1),
    .Read_data_2(Read_data_2),
    .Sign_extend(Sign_extend),
    .Function_opcode(Instruction[5:0]),
    .Exe_opcode(Instruction[31:26]),
    .ALUOp(ALUOp),
    .Shamt(Instruction[10:6]),    
    .ALUSrc(ALUSrc),
    .I_format(I_format),
    .Zero(Zero),
    .Jrn(Jrn),
    .Sftmd(Sftmd),
    .ALU_Result(ALU_Result),    
    .Add_Result(Add_Result),
    .PC_plus_4(PC_plus_4_out)
);

dmemory32 memory(
    .read_data(read_data_fromMemory),
    .address(address),
    .write_data(write_data),
    .Memwrite(MemWrite),
    .clock(clock)
);

memorio memio(
    .caddress(ALU_Result),
    .memread(MemRead),
    .memwrite(MemWrite),
    .ioread(IORead),
    .iowrite(IOWrite),
    .mread_data(read_data_fromMemory),
    .ioread_data(ioread_data),
    .wdata(Read_data_2),
    .rdata(read_data),
    .write_data(write_data),
    .address(address),
    .LEDCtrl(ledcs),
    .SwitchCtrl(switchcs)
);

ioread multiioread(
    .reset(rst),
    .ior(IORead),
    .switchctrl(switchcs),
    .ioread_data(ioread_data),
    .ioread_data_switch(switchrdata)
);

switchs switch24(
    .switclk(clock),
    .switrst(rst),
    .switchread(IORead),
    .switchcs(switchcs),
    .switchaddr(address[1:0]),
    .switchrdata(switchrdata),
    .switch_i(switch2N4)
);

leds led24(
    .led_clk(clock),
    .ledrst(rst),
    .ledwrite(IOWrite),
    .ledcs(ledcs),
    .ledaddr(address[1:0]),
    .ledwdata(write_data[15:0]),
    .ledout(led2N4)
);


endmodule
