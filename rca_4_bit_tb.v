`timescale 1ns / 1ps

module rca_4_bit_tb;

reg [3:0] a_t,b_t;
reg cin_t;
wire [3:0] sum_t;
wire cout_t;

rca_4_bit dut (a_t,b_t,cin_t,sum_t,cout_t);

initial
begin
    a_t = 4'b1010;
    b_t = 4'b0110;
    cin_t = 1'b0;
    #10;
    a_t = 4'b0111;
    b_t = 4'b1100;
    cin_t = 1'b1;
    #10;
    $finish;
end
endmodule
