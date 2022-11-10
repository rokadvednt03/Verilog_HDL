module adder_behavioural(a,b,c,sum,c_out);

input a,b,c;
output reg sum ;
output reg c_out;
always @(a or b or c)
begin

 {c_out,sum} = a + b + c;

end

endmodule
