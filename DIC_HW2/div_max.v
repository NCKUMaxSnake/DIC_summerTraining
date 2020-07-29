mescale 1ns / 10ps
module div(out, in1, in2, dbz);
    parameter width = 8;
    input   [width-1:0] in1; // Dividend
    input   [width-1:0] in2; // Divisor
    output  [width-1:0] out; // Quotient
    output dbz;

/********************************
 *
 * You need to write your code at here
 *
 * ********************************/

    input  [width*2:0] rem[0:width + 1];
    input  [width*2:0] div[0:width + 1];
    input  [width-1:0] quo[0:width + 1];
    input  [width*2:0] sub[0:width + 1];

    assign dbz = (in2 == 0)?1:0;

    assign rem[0] = {9'b0, in1};
    assign div[0] = {1'b0, in2, 8'b0};
    assign quo[0] = 8'b0;
    assign sub[0] = 17'b0;

   // sub s1(rem[0], div[0], quo[0], sub[0]);
    
    assign out = quo[9];

endmodule

module sub(rem , div, quo, sub);
    parameter width = 8;
    reg   [width*2:0] rem;
    reg   [width*2:0] div;
    reg   [width-1:0] quo;
    reg   [width*2:0] sub;

    genvar i;
    generate
        for(i = 0; i <= 8; i = i + 1)begin
            sub = rem - div;

            quo = {quo[width-2:0], ~sub[16]};

            rem = sub[16]?rem:sub;

            div >> 1;
        end
    endgenerate

endmodule

