`timescale 1ns/1ns
module Q5_Gate_TB ();
	logic aa=0,bb=0,cc=0,dd=0;
	wire ww;
	Q5_Gate G1(aa,bb,cc,dd,ww);
	initial begin
	#110 aa=1;bb=1;cc=1;
	#120 cc=0;
	#150 $stop;
	end
endmodule