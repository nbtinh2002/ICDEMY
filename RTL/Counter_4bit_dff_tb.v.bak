`timescale 1ns/10ps
module tb_counter_4bit_dff;

reg clk, rst, ud;
wire [3:0] q;

counter_4bit_dff uut (
	.clk(clk),
	.rst(rst), 
	.ud(ud),
	.q(q)
	);
always begin
   #5 clk = ~clk;
end
initial begin
	clk = 1; ud = 0;rst = 0; 
	#5;
	rst = 1;
	#10;
	ud = 1;
	#10;
	rst = 0;
	#170;
	ud = 0;
	#170;
	$finish;
end
endmodule