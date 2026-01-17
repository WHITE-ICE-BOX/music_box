module pitch(
    input [5:0]scale,
    input clk,
    input reset_,
    output pitch_clk
);
wire [19:0] table_div;

div_table div_table(.clk(clk),.reset_(reset_),.scale(scale),.count(table_div));
pitch_div pitch_div(.divider(table_div),.clk(clk),.scale(scale),.pitch_clk(pitch_clk),.reset_(reset_));

endmodule