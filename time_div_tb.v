`timescale 1ns/1ns
module time_div_tb(
    input out_clk,
    output reg clk,
    output reg reset
);
table_div table_div_u0(
    .clk(clk),
    .reset(reset),
    .out_clk(out_clk)
);
initial begin
    clk = 1'b0;
    reset = 1'b1;
    #20
    reset = 1'b0;

end
always #5 clk = ~clk;
endmodule