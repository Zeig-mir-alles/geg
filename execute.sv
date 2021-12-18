`include "execute.svh"

module execute(clk, operation);

input logic clk;
input operation_t operation;

always @(posedge clk) begin
	case(operation.operation_type)
		`OPERATION_ALU: begin
			$display("alu operation"); 
		end
		`OPERATION_MEM: begin
			$display("mem operation"); 
		end
		`OPERATION_BRANCH: begin
			$display("branch operation"); 
		end
		default: begin
			$display("unkwown operation");
		end
	endcase
end

endmodule
