`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/08/08 17:08:49
// Design Name: 
// Module Name: ControlIO32_sim
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


module ControlIO32_sim(
    );
            // input
    reg[5:0]   Opcode = 6'b000000;            // 来自取指单元instruction[31..26]
    reg[5:0]   Function_opcode  = 6'b100000;      // r-form instructions[5..0]  //ADD
    reg[21:0]  Alu_resultHigh = 22'b11000000110100100011; //  读操作需要从端口或存储器读数据到寄存器LW和SW的真正地址是Alu_Result,这里的Alu_resultHigh来自执行单元Alu_Result[31..10]，这个信号要进入到control32.v的模块中
    // output
    wire       Jrn;
    wire       RegDST;
    wire       ALUSrc;            // 决定第二个操作数是寄存器还是立即数
    wire       MemorIOtoReg;
    wire       RegWrite;
    wire       MemRead;
    wire       MemWrite;
    wire       IORead;
    wire       IOWrite;
    wire       Branch;
    wire       nBranch;
    wire       Jmp;
    wire       Jal;
    wire       I_format;
    wire       Sftmd;
    wire[1:0]  ALUOp;
    
	control32 Uctrl (
	.Opcode				(Opcode),			// 来自取指单元instruction[31..26]
    .Alu_resultHigh        (Alu_resultHigh),                    // 来自执行单元Alu_Result[31..10]
    .Function_opcode    (Function_opcode),    // 来自取指单元r-类型 instructions[5..0]
    .Jrn                (Jrn),                // 为1表明当前指令是jr
    .RegDST                (RegDST),            // 为1表明目的寄存器是rd，否则目的寄存器是rt
    .ALUSrc                (ALUSrc),            // 为1表明第二个操作数是立即数（beq，bne除外）
    .MemorIOtoReg        (MemorIOtoReg),            // 为1表明需要从存储器或I/O读数据到寄存器
    .RegWrite            (RegWrite),            // 为1表明该指令需要写寄存器
    .MemRead            (MemRead),                    // 为1表明是存储器读
    .MemWrite            (MemWrite),            // 为1表明该指令需要写存储器
    .IORead                (IORead),                    // 为1表明是I/O读
    .IOWrite            (IOWrite),                    // 为1表明是I/O写
    .Branch                (Branch),            // 为1表明是Beq指令
    .nBranch            (nBranch),            // 为1表明是Bne指令
    .Jmp                (Jmp),                // 为1表明是J指令
    .Jal                (Jal),                // 为1表明是Jal指令
    .I_format            (I_format),            // 为1表明该指令是除beq，bne，LW，SW之外的其他I-类型指令
    .Sftmd                (Sftmd),            // 为1表明是移位指令
    .ALUOp                (ALUOp)                // 是R-类型或I_format=1时位1为1, beq、bne指令则位0为1
);
            
    initial      begin
        #200     Function_opcode  = 6'b001000;               // JR
        #200    Opcode = 6'b001000;                         //  ADDI
        #200    Opcode = 6'b100011;                         //  LW
        #200    Opcode = 6'b101011;                         //  SW
        #200    begin Opcode = 6'b100011; Alu_resultHigh = 22'b1111111111111111111111; end;  //  LW  IO
        #200    begin Opcode = 6'b101011; Alu_resultHigh = 22'b1111111111111111111111; end;  //  SW  io
        #250    Opcode = 6'b000100;                         //  BEQ
        #200    Opcode = 6'b000101;                         //  BNE
        #250    Opcode = 6'b000010;                         //  JMP
        #200    Opcode = 6'b000011;                         //  JAL
        #250    begin Opcode = 6'b000000; Function_opcode  = 6'b000010; end;//  SRL
    end         
endmodule
