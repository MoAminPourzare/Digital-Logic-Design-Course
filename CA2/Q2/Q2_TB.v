`timescale 1ns/1ns
module Q2_Circuit_TB ();
	reg aa=1,bb=0,cc=0,dd=1,ss=0,mm=1;
	wire ww;
	Q2_Circuit C1(aa,bb,cc,dd,ss,mm,ww);
	initial begin
	#100 ss=1;
	#170 ss=0;
	#70 $stop;
	end
endmodule