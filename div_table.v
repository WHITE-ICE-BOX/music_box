`timescale 1ns/1ns
module div_table(
    input clk,// Basys 3 clk is 100 MHz
    input reset_,
    input [5:0]scale,// total 60 scales
    input hl,
    output wire [20:0]count_out
);
reg [20:0] count;
assign count_out = hl ? count >> 1 : count;
always@(posedge clk)begin
    if(reset_)begin
        count  <= 21'b0;
    end
    else begin
        case(scale)
            6'd0 : count <= 21'd1528818; //C2
            6'd1 : count <= 21'd1443002;
            6'd2 : count <= 21'd1362026;
            6'd3 : count <= 21'd1285678;
            6'd4 : count <= 21'd1213444;
            6'd5 : count <= 21'd1145344;
            6'd6 : count <= 21'd1081082;
            6'd7 : count <= 21'd1020408;
            6'd8 : count <= 21'd963112;
            6'd9 : count <= 21'd909090;
            6'd10 : count <= 21'd858074;
            6'd11 : count <= 21'd809912;
            6'd12 : count <= 21'd764468; //C3
            6'd13 : count <= 21'd721552;
            6'd14 : count <= 21'd681060;
            6'd15 : count <= 21'd642838;
            6'd16 : count <= 21'd606758;
            6'd17 : count <= 21'd572708;
            6'd18 : count <= 21'd540540;
            6'd19 : count <= 21'd510204;
            6'd20 : count <= 21'd481580;
            6'd21 : count <= 21'd454546;
            6'd22 : count <= 21'd429038;
            6'd23 : count <= 21'd404956;
            6'd24 : count <= 21'd382218; //C4
            6'd25 : count <= 21'd360776;
            6'd26 : count <= 21'd340530;
            6'd27 : count <= 21'd321406;
            6'd28 : count <= 21'd303370;
            6'd29 : count <= 21'd286342;
            6'd30 : count <= 21'd270278;
            6'd31 : count <= 21'd255102;
            6'd32 : count <= 21'd240790;
            6'd33 : count <= 21'd227272;
            6'd34 : count <= 21'd214518;
            6'd35 : count <= 21'd202478;
            6'd36 : count <= 21'd191114; //C5
            6'd37 : count <= 21'd180384;
            6'd38 : count <= 21'd170264;
            6'd39 : count <= 21'd160708;
            6'd40 : count <= 21'd151688;
            6'd41 : count <= 21'd143172;
            6'd42 : count <= 21'd135136;
            6'd43 : count <= 21'd127552;
            6'd44 : count <= 21'd120394;
            6'd45 : count <= 21'd113636;
            6'd46 : count <= 21'd107260;
            6'd47 : count <= 21'd101238;
            6'd48 : count <= 21'd95556; //C6
            6'd49 : count <= 21'd90192;
            6'd50 : count <= 21'd85132;
            6'd51 : count <= 21'd80354;
            6'd52 : count <= 21'd75844;
            6'd53 : count <= 21'd71586;
            6'd54 : count <= 21'd67568;
            6'd55 : count <= 21'd63776;
            6'd56 : count <= 21'd60196;
            6'd57 : count <= 21'd56818;
            6'd58 : count <= 21'd53630; //A#6/Bb6
            6'd59 : count <= 21'd50620; //B6
        endcase
    end
end
endmodule