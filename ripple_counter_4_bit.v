`timescale 1ns / 1ps

module ripple_counter_4_bit( clk, rst, Q );
input clk, rst;
output reg [3:0] Q;
always @(posedge clk or posedge rst) 
begin
    if (rst)
        Q <= 4'b0000;
    else
        Q <= count(Q);
end

function [3:0] count;
input [3:0] q;
begin
    count = q +1'b1;
end
endfunction

endmodule
