`include "decode.svh"

module decode(instruction);
	input instruction_t instruction;

	always @(instruction) begin
		case(instruction[6:0])
			`OPCODE_R_TYPE: begin
				$display("type r");
			end
			`OPCODE_I_TYPE: begin
				$display("type i");
			end
			`OPCODE_MI_TYPE: begin
				$display("type mi");
			end 
			`OPCODE_S_TYPE: begin
				$display("type s");
			end
			`OPCODE_B_TYPE: begin
				$display("type b");
			end
			`OPCODE_LUI_TYPE: begin
				$display("type lui");
			end
			`OPCODE_AUIPC_TYPE: begin
				$display("type auipc");
			end
			`OPCODE_JAL_TYPE: begin
				$display("type jal");
			end
			`OPCODE_JALR_TYPE: begin
				$display("type jalr");
			end
			default: begin
				$display("unkown opcode");
			end
		endcase
	end
endmodule
