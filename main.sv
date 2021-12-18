`include "decode.svh"
`include "alu.svh"

module main;

logic clk;
always #10 clk = ~clk;

instruction_t lol;

instruction_t instruction;

initial begin
	clk <= 1'b1;
	#100;
	$finish;
end

fetch fetcher(clk, instruction);
decode decoder(clk, instruction);

endmodule
