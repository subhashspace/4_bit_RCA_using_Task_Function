`timescale 1ns / 1ps

module ripple_counter_4_bit_tb;

reg clk_t,rst_t;
wire [3:0] q_t;

ripple_counter_4_bit dut (clk_t, rst_t, q_t);

initial
begin
    rst_t = 1'b1;
    clk_t = 1'b0;
    #100;
    rst_t = 1'b0;
    #1600;
    $finish;
end
always #50 clk_t = ~clk_t;
endmodule
