module labN2;
reg [31:0] PCin;
reg RegDst, RegWrite, clk, ALUSrc, INT, MemRead, MemWrite, Mem2Reg;
reg [2:0] op;
wire [31:0] wd, rd1, rd2, imm, ins, PCp4, z, memOut, wb;
wire [25:0] jTarget;
wire zero;
wire [15:0] zeros, ones;
assign zeros = 16'h0000;
assign ones = 16'hffff;
yIF myIF(ins, PCp4, PCin, clk);
yID myID(rd1, rd2, imm, jTarget, ins, wd, RegDst, RegWrite, clk);
yEX myEX(z, zero, rd1, rd2, imm, op, ALUSrc);
yDM myDM(memOut, z, rd2, clk, MemRead, MemWrite);
yWB myWB(wb, z, memOut, Mem2Reg);
yPC myPC(PCin, PCp4, INT, entryPoint, imm, jTarget, zero, branch, jump);
assign wd = wb;
assign opCode = ins[31:26];
yC1 myC1(rtype, lw, sw, jump, branch, opCode);
yC2 myC2(RegDst, ALUSrc, RegWrite, Mem2Reg, MemRead, MemWrite,
rtype, lw, sw, branch);
initial
begin
 entryPoint = 128; INT = 1; #1;
PCin = 128;
repeat(43)
begin
clk = 1; #1; INT = 0; branch = 0; jump = 0;
RegDst = 0; RegWrite = 0; ALUSrc = 1; op = 3'b010;
if(ins[31:26] == 0) //R-type
begin
RegDst = 1; RegWrite = 1; ALUSrc = 0;
if(ins[5:0] == 'h20) // add instruction
begin
RegDst = 1; RegWrite = 1; ALUSrc = 0;
MemRead = 0; MemWrite = 0; Mem2Reg = 0;
end
else if(ins[5:0] == 'h25)
begin
op = 3'b001;
MemRead = 0; MemWrite = 0; Mem2Reg = 0;
end
end // J-type
else if(ins[31:26] == 2 || ins[31:26] == 3)
begin
jump = 1;
end
else // I-type
begin
RegDst = 1; RegWrite = 1; ALUSrc = 1;
if(ins[31:26] == 'h4) // beq instruction
begin
ALUSrc = 0; op = 3'b110;
MemRead = 0; MemWrite = 0; Mem2Reg = 0;
branch = 1;
end
else if(ins[31:26] == 'h23) // lw instruction
begin
RegDst = 0; RegWrite = 1; ALUSrc = 1;
MemRead = 1; MemWrite = 0; Mem2Reg = 1;
end
else if(ins[31:26] == 'h8) // addi instruction
begin
RegDst = 0; RegWrite = 1; ALUSrc = 1;
MemRead = 0; MemWrite = 0; Mem2Reg = 0;
end
end
clk = 0; #1;
$display("%h: rd1=%2d rd2=%2d z=%3d zero=%b wb=%2d", ins, rd1, rd2, z, zero, wb);
$finish;
end
endmodule