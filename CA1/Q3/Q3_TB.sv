`timescale 1ns/1ns
module Circuit_Q3_TB ();
	wire ww;
	logic aa=0,bb=0,cc=0,dd=0;
	Circuit_Q3 C1(aa,bb,cc,dd,ww);
	initial begin
	#70 aa=1;bb=1;cc=1;
	#50 dd=1;aa=0;
	#70 aa=1;
	#80 $stop;
	end
endmodule