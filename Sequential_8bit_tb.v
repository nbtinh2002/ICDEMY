`timescale 1ns/10ps
module tb_sequential_8bit;
reg clk, rst;
reg [7:0] d;
wire [7:0] q;

sequential_8bit uut (
	.clk(clk),
	.rst(rst), 
	.d(d),
	.q(q)
	);
always begin
   #5 clk = ~clk;
end
initial begin
	clk = 0; rst = 0; d =8'b00000000;
	#5;
	rst = 1;d = 8'b01010101;
	#20;
	rst = 0; 
	#10;
	d = 8'b00001111;
	#10;
	d = 8'b11110000;
	#10;
	$finish;
end
endmodule