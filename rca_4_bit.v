`timescale 1ns / 1ps

module rca_4_bit ( A, B, cin, sum, cout);

input [3:0] A, B;
input cin;
output reg [3:0] sum;
output reg cout;
reg c; 
integer i;

task full_adder;
    input a, b, cin;
    output s, cout;
    begin
        s = a ^ b ^ cin;
        cout = (a & b) | (b & cin) | (cin & a);
    end
endtask

always @(*) 
begin
    c = cin;
    for (i = 0; i < 4; i = i + 1) begin
        full_adder(A[i], B[i], c, sum[i], c);
    end
    cout = c;
end
endmodule
