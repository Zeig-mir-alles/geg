`define "cache.svh"

module cache(operation, address, imm);

input logic [1:0] operation;
input logic [31:0] address;
input logic [31:0] imm;
output logic [31:0] dest;
reg [31:0] memory [0:255];

always @* begin
    case(operation)
        `MEM_OPERATION_READ: dest = memory[address];
        
		`MEM_OPERATION_WRITE: memory[address] = imm;
    endcase
	address = address+4;
end

endmodule
