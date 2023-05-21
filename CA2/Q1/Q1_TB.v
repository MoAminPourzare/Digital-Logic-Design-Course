`timescale 1ns/1ns
module Q1_Circuit_TB ();
	reg aa=0,bb=1,ss=0,en=1;
	wire ww;
	Q1_Circuit C1(aa,bb,ss,en,ww);
	initial begin
	#100 ss=1;
	#170 ss=0;
	#70 $stop;
	end
endmodule