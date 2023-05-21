`timescale 1ns/1ns
module Circuit_Q4_TB ();
	logic aa=0,bb=0,cc=0,dd=0;
	wire ww;
	Circuit_Q4 C1(aa,bb,cc,dd,ww);
	initial begin
	#110 aa=1;bb=1;
	#30 cc=1;dd=1;
	#120 dd=0;cc=0;
	#120 dd=1;
	#150 $stop;
	end
endmodule