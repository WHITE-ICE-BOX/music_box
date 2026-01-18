`timescale 1ns/1ns

module table_div(
    input clk,
    input reset,
    output reg out_clk
);
    reg [21:0]count;
    always@(posedge clk)begin
        if(reset)begin
            out_clk <= 1'b0;
            count <= 22'd2577319;
        end
        else begin
            if(count == 22'b0)
                count <= 22'd2577319;
            else
                count <= count - 22'b1; 
                
            if(count >= 22'd1288660)
                out_clk <= 1'b1;
            else
                out_clk <= 1'b0;
        end
    end

endmodule