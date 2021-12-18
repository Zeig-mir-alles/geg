`include "decode.svh"
`include "execute.svh"

module decode(clk, instruction);
	input logic clk;
	input instruction_t instruction;

	operation_t operation;
	execute execute(clk, operation);



	task rtype_instruction(input instr_t instr);
		begin
			$display("type r");
			case(instr.func3)
				3'b000: begin
					case(instr.func7)
						7'b000000: begin // add
						end
						7'b010000: begin // sub
						end
						default begin
							$display("unkwon function");
						end
					endcase
				end
				3'b001: begin
					case(instr.func7)
						7'b0000000: begin // sll
						end
						default: begin
							$display("unknown function");
						end
					endcase
				end
				3'b010: begin
					case(instr.func7)
						7'b0000000: begin // slt
						end
						default: begin
							$display("unknown function");
						end
					endcase
				end
				3'b011: begin
					case(instr.func7)
						7'b0000000: begin // sltu
						end
						default: begin
							$display("unknown function");
						end
					endcase
				end
				3'b100: begin
					case(instr.func7)
						7'b0000000: begin // xor
						end
						default: begin
							$display("unknown function");
						end
					endcase
				end
				3'b101: begin
					case(instr.func7)
						7'b0000000: begin // srl
						end
						default: begin
							$display("unknown function");
						end
					endcase
				end
				3'b101: begin
					case(instr.func7)
						7'b0000000: begin // sra
						end
						default: begin
							$display("unknown function");
						end
					endcase
				end
				3'b110: begin
					case(instr.func7)
						7'b0000000: begin // or
						end
						default: begin
							$display("unknown function");
						end
					endcase
				end
				3'b111: begin
					case(instr.func7)
						7'b0000000: begin // and
						end
						default: begin
							$display("unknown function");
						end
					endcase
				end
			endcase
		end
	endtask

	task itype_instruction(input insti_t insti);
		begin
			$display("type i");						
		end
	endtask

	task btype_instruction(input instb_t instr);
		begin
			$display("type b");
		end
	endtask

	task stype_instruction(input insts_t insts);
		begin
			$display("type s");
		end
	endtask

	always @(posedge clk) begin
		case(instruction[6:0])
			`OPCODE_R_TYPE:	rtype_instruction(instruction.instr);
			`OPCODE_MI_TYPE: itype_instruction(instruction.insti);
			`OPCODE_I_TYPE: itype_instruction(instruction.insti);
			`OPCODE_B_TYPE: btype_instruction(instruction.instu);
			`OPCODE_S_TYPE: stype_instruction(instruction.insts);
			default: $display("unkown opcode");
		endcase
	end
endmodule
