module data_ff(d,out);
input d;
output reg out;
reg clk;

always @(clk)
#1 clk = ~clk;

always @(posedge clk)
out <= d;

endmodule
