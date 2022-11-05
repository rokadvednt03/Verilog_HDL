/*module mux(a,b,c,d,e,f,y);
input a,b,c,d,e,f;
output y;
//wand y;
wor y;
assign y = a||b;
assign y = c||d;
assign y = e||f;

endmodule

*/
/*
module mux(y,a,b,c,d);
input a,b,c,d;
output y;

supply1 vdd ;
supply0 gnd;

or(x1,a,gnd);
and(x2,b,vdd);
xor(y,x1,x2);

endmodule

module name(d,f);
input d;
output f;
endmodule

*/

//4x1 MUX
module mux1(i0,i1,i2,i3,s0,s1,out);
input i0 ,i1,i2,i3 ,s0,s1;
output out;

reg out;

always @(i0 or i1 or i2 or i3 or s0 or s1)

begin

case ({s0 , s1})

	2'b00 :	out = i0;
	2'b01	:	out = i1;
	2'b10	:	out = i2;
	2'b11	:	out = i3;
	default : out = 0;
	
	endcase
	
end

endmodule
