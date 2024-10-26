module counter_4bit_dff(
input clk, rst,ud ,
output reg [3:0] q
);

always @(posedge clk or posedge rst) begin
   if(ud) begin
      if(rst)
         q <= 4'b0000;
      else
         q <= q + 1;	
   end
   else begin
      if(rst)
         q <= 4'b1111;
      else
         q <= q - 1;	
   end
end
endmodule

