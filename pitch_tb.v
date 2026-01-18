`timescale 1ns/1ns
module pitch_tb(
    input pitch_clk,
    output reg hl,
    output reg [5:0]scale,
    output reg clk,
    output reg reset_
);
pitch pitch(.clk(clk),.reset_(reset_),.scale(scale),.pitch_clk(pitch_clk),.hl(hl));
initial begin
    clk = 1'b0;
    reset_ = 1'b1;
    hl = 1'b0;
    #20
    hl = 1'b1;
    reset_ = 1'b0;
    scale = 6'd59;
    #2000000
    hl = 1'b0;

end
always #5 clk = ~clk;
endmodule