`timescale 1ns/1ps
module pitch_tb(
    input pitch_clk,
    output reg [5:0]scale,
    output reg clk,
    output reg reset_
);
pitch pitch(.clk(clk),.reset_(reset_),.scale(scale),.pitch_clk(pitch_clk));
initial begin
    clk = 1'b0;
    reset_ = 1'b1;
    #20
    reset_ = 1'b0;
    scale = 5'd0;
    #100
    clk = 1'b0;
    reset_ = 1'b1;
    #20
    reset_ = 1'b0;
    scale = 5'd1;
    #100
    clk = 1'b0;
    reset_ = 1'b1;
    #20
    reset_ = 1'b0;
    scale = 5'd20;
    #100
    clk = 1'b0;
    reset_ = 1'b1;
    #20
    reset_ = 1'b0;
    scale = 5'd59;
end
always #5 clk = ~clk;
endmodule