module decoder1(a,b,enable,out);

input a,b,enable;
output reg [3:0] out;

always @(enable or a or b)

	begin

		if(enable)
			begin
			if(a==1'b0 && b==1'b0)
				out = 4'b1000;
			else if(a==1'b0 && b==1'b1)
				out = 4'b0100 ;
			else if(a==1'b1 && b==1'b0)
				out = 4'b0010;
			else if(a==1'b1 && b==1'b1)
				out = 4'b0001;
			end
		else
			out = 4'b0000;
	end

endmodule

