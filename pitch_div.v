`timescale 1ns/1ns
module pitch_div(
    input [20:0] divider,
    input clk,
    input [5:0]scale,
    input reset_,
    output reg pitch_clk
);
    reg [20:0] count;
    reg stall;
    always@(posedge clk)begin
        if(reset_)begin
            pitch_clk <= 1'b0;
            count <= 21'b0;
            stall <= 1'b1;
        end
        else begin
            if(stall)begin
                count <= 21'b0;
                stall <= 1'b0;
            end
            else if(count == 21'b0)
                count <= divider;
            else
                count <= count - 21'b1; 
                
            if(count >= divider>>1)
                pitch_clk <= 1'b1;
            else
                pitch_clk <= 1'b0;
            
        end
    end
endmodule