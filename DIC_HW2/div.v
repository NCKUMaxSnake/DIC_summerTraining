`timescale 1ns / 10ps
module div(out, in1, in2, dbz);
    parameter width = 8;
    input   [width-1:0] in1; // Dividend
    input   [width-1:0] in2; // Divisor
    output  [width-1:0] out; // Quotient
    output dbz;

/********************************

You need to write your code at here

********************************/

    wire   [width*2:0] rem[0:width + 1];
    wire   [width*2:0] div[0:width + 1];
    wire   [width-1:0] quo[0:width + 1];
    wire   [width*2:0] sub[0:width + 1];

    assign dbz = (in2 == 0)?1:0;
    
    assign rem[0] = {9'b0, in1};
    assign div[0] = {1'b0, in2, 8'b0};
    assign quo[0] = 8'b0;
    assign sub[0] = 17'b0;

    genvar i;
    generate
        for(i = 0; i <= 8; i = i + 1)begin
            assign sub[i+1] = rem[i] - div[i];

            assign quo[i+1] = {quo[i][width-2:0], ~sub[i+1][16]};
        
            assign rem[i+1] = sub[i+1][16]?rem[i]:sub[i+1];

            assign div[i+1] = div[i] >> 1;
        end
    endgenerate

    assign out = quo[9];

endmodule
