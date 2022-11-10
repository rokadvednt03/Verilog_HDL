module decoder2(a,b,enable,out);
input a,b,enable;
output reg [3:0] out;

always @(enable or a or b)
begin
	case({b,a})
	2'b00	:	out = 4'b1000 ;
	2'b01	:	out = 4'b0100 ;
	2'b10	:	out = 4'b0010 ;
	2'b11	:	out = 4'b0001 ;
	default :	out = 4'b0000;
	endcase
end

endmodule
