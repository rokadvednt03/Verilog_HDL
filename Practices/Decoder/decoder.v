module decoder(a,b,d0,d1,d2,d3,enable);
input a,b,enable;
output d0,d1,d2,d3;

reg d0,d1,d2,d3;

always @(enable)

begin

case({a,b})

	2'b00	:	d0 = (~a&~b);
	2'b01	:	d1 = (~a&b);
	2'b10	:	d2 = (a&~b);
	2'b11	:	d3 = (a&b);
	//default : d0=d1=d2=d3=0;
	
	endcase
end

endmodule
