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
    reg[5:0]   Opcode = 6'b000000;            // ����ȡָ��Ԫinstruction[31..26]
    reg[5:0]   Function_opcode  = 6'b100000;      // r-form instructions[5..0]  //ADD
    reg[21:0]  Alu_resultHigh = 22'b11000000110100100011; //  ��������Ҫ�Ӷ˿ڻ�洢�������ݵ��Ĵ���LW��SW��������ַ��Alu_Result,�����Alu_resultHigh����ִ�е�ԪAlu_Result[31..10]������ź�Ҫ���뵽control32.v��ģ����
    // output
    wire       Jrn;
    wire       RegDST;
    wire       ALUSrc;            // �����ڶ����������ǼĴ�������������
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
	.Opcode				(Opcode),			// ����ȡָ��Ԫinstruction[31..26]
    .Alu_resultHigh        (Alu_resultHigh),                    // ����ִ�е�ԪAlu_Result[31..10]
    .Function_opcode    (Function_opcode),    // ����ȡָ��Ԫr-���� instructions[5..0]
    .Jrn                (Jrn),                // Ϊ1������ǰָ����jr
    .RegDST                (RegDST),            // Ϊ1����Ŀ�ļĴ�����rd������Ŀ�ļĴ�����rt
    .ALUSrc                (ALUSrc),            // Ϊ1�����ڶ�������������������beq��bne���⣩
    .MemorIOtoReg        (MemorIOtoReg),            // Ϊ1������Ҫ�Ӵ洢����I/O�����ݵ��Ĵ���
    .RegWrite            (RegWrite),            // Ϊ1������ָ����Ҫд�Ĵ���
    .MemRead            (MemRead),                    // Ϊ1�����Ǵ洢����
    .MemWrite            (MemWrite),            // Ϊ1������ָ����Ҫд�洢��
    .IORead                (IORead),                    // Ϊ1������I/O��
    .IOWrite            (IOWrite),                    // Ϊ1������I/Oд
    .Branch                (Branch),            // Ϊ1������Beqָ��
    .nBranch            (nBranch),            // Ϊ1������Bneָ��
    .Jmp                (Jmp),                // Ϊ1������Jָ��
    .Jal                (Jal),                // Ϊ1������Jalָ��
    .I_format            (I_format),            // Ϊ1������ָ���ǳ�beq��bne��LW��SW֮�������I-����ָ��
    .Sftmd                (Sftmd),            // Ϊ1��������λָ��
    .ALUOp                (ALUOp)                // ��R-���ͻ�I_format=1ʱλ1Ϊ1, beq��bneָ����λ0Ϊ1
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
