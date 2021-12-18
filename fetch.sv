`include "decode.svh"

module fetch(clk, instruction);
	input logic clk;
	output instruction_t instruction;

	always @(posedge clk) begin
		instruction.instr.opcode <= `OPCODE_R_TYPE;
		instruction.instr.func3 <= 3'b000;
		instruction.instr.func7 <= 7'b0000000;
		instruction.instr.rs1 <= 0;
		instruction.instr.rs2 <= 0;
		instruction.instr.rd <= 0;
	end
endmodule
