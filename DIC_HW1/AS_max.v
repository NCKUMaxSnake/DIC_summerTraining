module AS(sel, A, B, S, O);
    input [3:0] A, B;
    input sel;
    output [3:0] S;
    output O;
    wire c0,c1,c2,c3,c4;

    Full_adder fa1(.sum(S[0]), .cout(c1), .a(A[0]), .b(B[0] ^ sel), .cin(sel));
    Full_adder fa2(.sum(S[1]), .cout(c2), .a(A[1]), .b(B[1] ^ sel), .cin(c1));
    Full_adder fa3(.sum(S[2]), .cout(c3), .a(A[2]), .b(B[2] ^ sel), .cin(c2));
    Full_adder fa4(.sum(S[3]), .cout(c4), .a(A[3]), .b(B[3] ^ sel), .cin(c3));

    assign O = c3 ^ c4;
endmodule

module Full_adder(sum, cout, a, b, cin);
    input a, b, cin;
    output sum, cout;

    assign sum = a ^ b ^ cin;
    assign cout = (a & b)  |  (a & cin)  |  (b & cin);
endmodule
