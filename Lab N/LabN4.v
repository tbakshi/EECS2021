module labN4;
reg [31:0] entryPoint;
reg clk, INT;
wire [31:0] ins, rd2, wb;
yChip myChip(ins, rd2, wb, entryPoint, INT, clk);
initial
begin
// --------------------entry point
assign entryPoint = 32'h80;
assign INT = 1; #1;
#1 assign INT = 0; // unset interrupt signal
// --------------------run program
repeat(43)
begin
// ----------------fetch an ins
clk = 1; #1;
// ----------------set control signals
// ----------------execute the ins
clk = 0; #1;
// ----------------view results
$display("%h: rd2=%2d wb=%2d", ins, rd2, wb);
// ----------------to prepare for the next instruction
end
$finish;
end
endmodule