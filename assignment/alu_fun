module alu(input [3:0]a,b,
output [4:0]sum,dif,
output [7:0]mul,
output [3:0]div);
assign sum=add(a,b);
assign dif=sub(a,b);
assign mul=pro(a,b);
assign div=divide(a,b);
function [4:0] add;
	input [3:0]x,y;
	begin
	add=x+y;
	end
endfunction 
function [4:0] sub;
	input [3:0]x,y;
	begin
	sub=x-y;
	end
endfunction
function [7:0] pro;
	input [3:0]x,y;
	begin
	pro=x*y;
	end
endfunction
function [3:0] divide;
	input [3:0]x,y;
	begin
	divide=x/y;
	end
endfunction
endmodule 

