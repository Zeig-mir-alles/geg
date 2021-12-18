`include "decode.svh"
`include "alu.svh"

module main;

logic clk;
always #10 clk = ~clk;

initial begin
	clk <= 1'b1;
	$finish;
end

instruction_t instruction;

fetch fetcher(clk, instruction);
decode decoder(clk, instruction);

always @(posedge clk) begin
	$display("hello I am here");
end

endmodule
