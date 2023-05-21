`timescale 1ns/1ns
module Orthogonal_TB();
	reg rst=0,clk=0,jj=0;
	wire [7:0] qq;
	wire serOutt;
	Orthogonal OO(serOutt,jj,clk,rst,qq);
	always #30 clk = ~clk;
	initial begin
	#40 rst=1;
	#30 rst=0;
	#50 jj=1;
	#70 jj=0;
	#40 jj=1;
	#80 jj=0;
	#40 jj=1;
	#20 jj=0;
	#10 jj=1;
	#60 jj=0;
	#40 jj=1;
	#35 jj=0;
	#35 jj=1;
	#40 jj=0;
	#50 jj=1;
	#50000 $stop;
	end
endmodule