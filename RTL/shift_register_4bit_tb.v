`timescale 1ns/10ps
module tb_shift_register_4bit;
reg clk, rst, d, lr;
wire [3:0] q;
shift_register_4bit uut (
	.clk(clk),
	.rst(rst), 
	.d(d),
	.lr(lr),
	.q(q)
	);
always begin
   #5 clk = ~clk;
end
initial begin
	clk = 1; rst = 0; d = 1;lr = 0;
	#5;
	rst = 1;
	#20;
	rst = 0;
	#50;
	lr = 1;d =0;
	#50;
	$finish;
end
endmodule
