`timescale 1ns/1ps
module tb_dff;

reg clk, rst, D;
wire Q;

dff uut (
	.clk(clk),
	.rst(rst), 
	.D(D),
	.Q(Q)
	);
always begin
   #1 clk = ~clk;
end
initial begin
	clk = 1; rst = 1; D = 1;
	#10;
	rst = 0;D=1;
	#5;
	D=0;
	#5;	
	$finish;
end
endmodule