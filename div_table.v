`timescale 1ns/1ps
module div_table(
    input clk,// Basys 3 clk is 100 MHz
    input reset_,
    input [5:0]scale,// total 60 scales
    output reg [19:0]count 
);
always@(posedge clk or negedge reset_)begin
    if(!reset_)begin
        count  <= 20'b0;
    end
    else begin
        case(scale)
            6'd0 : count <= 20'd764409;//C2
            6'd1 : count <= 20'd721501;
            6'd2 : count <= 20'd681013;
            6'd3 : count <= 20'd642839;
            6'd4 : count <= 20'd606722;
            6'd5 : count <= 20'd572672;
            6'd6 : count <= 20'd540541;
            6'd7 : count <= 20'd510204;
            6'd8 : count <= 20'd481556;
            6'd9 : count <= 20'd454545;
            6'd10 : count <= 20'd429037;
            6'd11 : count <= 20'd404956;
            6'd12 : count <= 20'd382234;//C3
            6'd13 : count <= 20'd360776;
            6'd14 : count <= 20'd340530;
            6'd15 : count <= 20'd321419;
            6'd16 : count <= 20'd303379;
            6'd17 : count <= 20'd286354;
            6'd18 : count <= 20'd270270;
            6'd19 : count <= 20'd255102;
            6'd20 : count <= 20'd240790;
            6'd21 : count <= 20'd227273;
            6'd22 : count <= 20'd214519;
            6'd23 : count <= 20'd202478;
            6'd24 : count <= 20'd191109;//C4
            6'd25 : count <= 20'd180388;
            6'd26 : count <= 20'd170265;
            6'd27 : count <= 20'd160703;
            6'd28 : count <= 20'd151685;
            6'd29 : count <= 20'd143171;
            6'd30 : count <= 20'd135139;
            6'd31 : count <= 20'd127551;
            6'd32 : count <= 20'd120395;
            6'd33 : count <= 20'd113636;
            6'd34 : count <= 20'd107259;
            6'd35 : count <= 20'd101239;
            6'd36 : count <= 20'd95557;//C5
            6'd37 : count <= 20'd90192;
            6'd38 : count <= 20'd85132;
            6'd39 : count <= 20'd80354;
            6'd40 : count <= 20'd75844;
            6'd41 : count <= 20'd71586;
            6'd42 : count <= 20'd67568;
            6'd43 : count <= 20'd63776;
            6'd44 : count <= 20'd60197;
            6'd45 : count <= 20'd56818;
            6'd46 : count <= 20'd53630;
            6'd47 : count <= 20'd50619;
            6'd48 : count <= 20'd47778;//C6
            6'd49 : count <= 20'd45096;
            6'd50 : count <= 20'd42566;
            6'd51 : count <= 20'd40177;
            6'd52 : count <= 20'd37922;
            6'd53 : count <= 20'd35793;
            6'd54 : count <= 20'd33784;
            6'd55 : count <= 20'd31888;
            6'd56 : count <= 20'd30098;
            6'd57 : count <= 20'd28409;
            6'd58 : count <= 20'd26815;//A#6/Bb6
            6'd59 : count <= 20'd25310;//B6
        endcase
    end
end
endmodule