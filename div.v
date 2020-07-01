`timescale 1ns / 10ps
module div(out, in1, in2, dbz);
parameter width = 8;
input  	[width-1:0] in1; // Dividend
input  	[width-1:0] in2; // Divisor
output  [width-1:0] out; // Quotient
output dbz;


/********************************

You need to write your code at here

********************************/

wire [15:0]tmp_dividend;
wire [16:0]s_tmp_dividend;
wire [8:0]left_s_tmp_dividend;
wire [15:0]s_left_s_tmp_dividend;

wire [8:0]left_s_tmp_dividend2;
wire [15:0]s_left_s_tmp_dividend2;

wire [8:0]left_s_tmp_dividend3;
wire [15:0]s_left_s_tmp_dividend3;

wire [8:0]left_s_tmp_dividend4;
wire [15:0]s_left_s_tmp_dividend4;
wire [8:0]left_s_tmp_dividend5;
wire [15:0]s_left_s_tmp_dividend5;

wire [8:0]left_s_tmp_dividend6;
wire [15:0]s_left_s_tmp_dividend6;


wire [8:0]left_s_tmp_dividend7;
wire [15:0]s_left_s_tmp_dividend7;
wire [8:0]left_s_tmp_dividend8;
wire [15:0]s_left_s_tmp_dividend8;

wire [8:0] tmp_divisor;

assign tmp_dividend = {8'b0,in1};
assign tmp_divisor = {1'b0,in2};
assign s_tmp_dividend = {tmp_dividend[15:0],1'b0};
assign left_s_tmp_dividend = s_tmp_dividend[15:8] - tmp_divisor;
assign s_left_s_tmp_dividend = (left_s_tmp_dividend[8]!= 1'b1)  ? {left_s_tmp_dividend[6:0],s_tmp_dividend[7:0],1'b1}
                                                                : {s_tmp_dividend[14:0],1'b0};

assign left_s_tmp_dividend2 = s_left_s_tmp_dividend[15:8] - tmp_divisor;
assign s_left_s_tmp_dividend2 = (left_s_tmp_dividend2[8]!=1'b1) ? {left_s_tmp_dividend2[6:0],s_left_s_tmp_dividend[7:0],1'b1}
                                                                : {s_left_s_tmp_dividend[14:0],1'b0};

assign left_s_tmp_dividend3 = s_left_s_tmp_dividend2[15:8] - tmp_divisor;
assign s_left_s_tmp_dividend3 = (left_s_tmp_dividend3[8]!=1'b1) ? {left_s_tmp_dividend3[6:0],s_left_s_tmp_dividend2[7:0],1'b1}
                                                                : {s_left_s_tmp_dividend2[14:0],1'b0};

assign left_s_tmp_dividend4 = s_left_s_tmp_dividend3[15:8] - tmp_divisor;
assign s_left_s_tmp_dividend4 = (left_s_tmp_dividend4[8]!=1'b1) ? {left_s_tmp_dividend4[6:0],s_left_s_tmp_dividend3[7:0],1'b1}
                                                                : {s_left_s_tmp_dividend3[14:0],1'b0};

assign left_s_tmp_dividend5 = s_left_s_tmp_dividend4[15:8] - tmp_divisor;
assign s_left_s_tmp_dividend5 = (left_s_tmp_dividend5[8]!=1'b1) ? {left_s_tmp_dividend5[6:0],s_left_s_tmp_dividend4[7:0],1'b1}
                                                                : {s_left_s_tmp_dividend4[14:0],1'b0};

assign left_s_tmp_dividend6 = s_left_s_tmp_dividend5[15:8] - tmp_divisor;
assign s_left_s_tmp_dividend6 = (left_s_tmp_dividend6[8]!=1'b1) ? {left_s_tmp_dividend6[6:0],s_left_s_tmp_dividend5[7:0],1'b1}
                                                                : {s_left_s_tmp_dividend5[14:0],1'b0};
assign left_s_tmp_dividend7 = s_left_s_tmp_dividend6[15:8] - tmp_divisor;
assign s_left_s_tmp_dividend7 = (left_s_tmp_dividend7[8]!=1'b1) ? {left_s_tmp_dividend7[6:0],s_left_s_tmp_dividend6[7:0],1'b1}
                                                                : {s_left_s_tmp_dividend6[14:0],1'b0};

assign left_s_tmp_dividend8 = s_left_s_tmp_dividend7[15:8] - tmp_divisor;
assign s_left_s_tmp_dividend8 = (left_s_tmp_dividend8[8]!=1'b1) ? {left_s_tmp_dividend8[6:0],s_left_s_tmp_dividend7[7:0],1'b1}
                                                                : {s_left_s_tmp_dividend7[14:0],1'b0};


assign dbz = (in2 == 8'b0) ? 1'b1 : 1'b0;
assign out = (dbz == 1'b1) ? 8'b0 : s_left_s_tmp_dividend8[7:0];





endmodule
