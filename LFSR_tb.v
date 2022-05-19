`timescale 1ns/10ps
module LFSR_tb;
reg clk, rst_syn;
wire [2:0] out;

LFSR LFSR_tb(
    .clk(clk),
    .rst_syn(rst_syn),
    .out(out)
);

initial begin
    clk = 0;
    rst_syn = 0;
end    

always #50 clk = ~clk;

initial
    #100 rst_syn = 1;
initial 
    #150 rst_syn = 0;
initial
    #2000 $finish;

initial
begin
    $dumpfile("LFSR.vcd");
    $dumpvars(0, LFSR_tb);
end

endmodule