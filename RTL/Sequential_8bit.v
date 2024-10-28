
module sequential_8bit(
   input clk, rst,
   input wire[7:0] d ,
   output reg [7:0] q
);

always @(posedge clk or posedge rst) begin
      if(rst)
         q <= 8'b00000000;
      else
         q <= d;
end
endmodule