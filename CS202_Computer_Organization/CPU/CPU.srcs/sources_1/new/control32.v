`timescale 1ns / 1ps

module control32(Opcode, Function_opcode,Alu_resultHigh,Jrn, RegDST, ALUSrc,RegWrite,MemWrite, Branch, nBranch, Jmp, Jal, I_format,Sftmd, ALUOp,MemorIOtoReg,MemRead,IORead,IOWrite);
input[5:0] Opcode; // instruction[31..26]
input[5:0] Function_opcode; // instructions[5..0]
input[21:0] Alu_resultHigh;
output wire Jrn; //1 indicates the instruction is "jr", otherwise it's not "jr"
output wire RegDST; //1 indicate destination register is "rd",otherwise it's "rt"
output wire ALUSrc; //1 indicate the 2nd data is immidiate (except "beq","bne")
output wire RegWrite; // 1 indicate write register, otherwise it's not
output wire MemWrite;
output wire Branch; // 1 indicate the instruction is "beq" , otherwise it's not
output wire nBranch; // 1 indicate the instruction is "bne", otherwise it's not
output wire Jmp; // 1 indicate the instruction is "j", otherwise it's not
output wire Jal; // 1 indicate the instruction is "jal", otherwise it's not
output wire I_format; // 1 indicate the instruction is I-type but isn't "beq","bne","LW" or "SW"
output wire Sftmd; // 1 indicate the instruction is shift instruction
output wire [1:0] ALUOp; // if it's R-type or I_format=1,bit1 is 1; if it's "beq" or "bne",bit 0 is 1
output wire MemorIOtoReg;
output wire MemRead;
output wire IORead;
output wire IOWrite;
wire R_format;

assign R_format = (Opcode==6'b000000)? 1'b1:1'b0;
assign I_format = (Opcode[5:3]==3'b001)? 1'b1:1'b0;
assign RegDST = R_format && (~I_format && Opcode!=6'b100011);
assign RegWrite = ((I_format||R_format||Opcode==6'b000011||Opcode==6'b100011)&&!Jrn)? 1'b1:1'b0;
assign Jmp = (Opcode==6'b000010)? 1'b1:1'b0;
assign Jal = (Opcode==6'b000011)? 1'b1:1'b0;
assign Jrn = (Opcode==6'b000000 && Function_opcode==6'b001000)? 1'b1:1'b0;
assign Branch = (Opcode==6'b000100)? 1'b1:1'b0;
assign nBranch = (Opcode==6'b000101)? 1'b1:1'b0;
assign ALUOp = {(R_format||I_format),(Branch||nBranch)};
assign Sftmd = (Opcode==6'b000000 && Function_opcode[5:3]==3'b000)? 1'b1:1'b0;
assign ALUSrc = (I_format || Opcode==6'b100011||Opcode==6'b101011)? 1'b1:1'b0;
assign MemWrite = (Opcode==6'b101011 && Alu_resultHigh[21:0] != 22'b1111111111111111111111)? 1'b1:1'b0;
assign MemRead = (Opcode==6'b100011 && Alu_resultHigh[21:0] != 22'b1111111111111111111111)? 1'b1:1'b0;
assign IORead = (Opcode==6'b100011 && Alu_resultHigh[21:0] == 22'b1111111111111111111111)? 1'b1:1'b0;
assign IOWrite = (Opcode==6'b101011 && Alu_resultHigh[21:0] == 22'b1111111111111111111111)? 1'b1:1'b0;
assign MemorIOtoReg = IORead || MemRead;

endmodule
