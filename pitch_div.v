module pitch_div(
    input [19:0] divider,
    input clk,
    input [5:0]scale,
    input reset_,
    output reg pitch_clk
);
    reg [19:0] count;
    always@(posedge clk or negedge reset_)begin
        if(!reset_)begin
            pitch_clk <= 1'b0;
            count <= divider;
        end
        else begin
            count <= count - 20'b1; 
            if(count >= divider)
                pitch_clk <= 1'b1;
            else
                pitch_clk <= 1'b0;
        end
    end
endmodule