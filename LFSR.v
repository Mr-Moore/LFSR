module LFSR(clk, rst_syn, out);
input clk, rst_syn;
output reg [2:0] out;
always @(clk)
begin
    if(rst_syn)
        out <= 3'b110;
    else
        out <= {out[1], out[0], out[0] ^ out[2]};
end
endmodule