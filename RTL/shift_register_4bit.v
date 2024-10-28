module shift_register_4bit(
   input clk, rst, d,lr,
   output reg [3:0] q
   );

always @(posedge clk or posedge rst) begin
   if(rst)
      q <= 4'b0000;
   else
      if (lr==0)        //shift left
         q <= {q[2:0],d};
      else               //shift right
         q <= {d,q[3:1]};
end
endmodule
