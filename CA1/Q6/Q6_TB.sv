`timescale 1ns/1ns
module Q6_Circuit_TB ();
	logic aa=0,bb=0,cc=0,dd=0;
	wire ww1,ww2,ww3;
	Circuit_Q3 C1(aa,bb,cc,dd,ww1);
	Circuit_Q4 C2(aa,bb,cc,dd,ww2);
	Circuit_Q5 C3(aa,bb,cc,dd,ww3);
	initial begin
	#120 aa=1;bb=1;cc=1;
	#130 dd=1;aa=0;
	#100 aa=1;
	#120 dd=0;cc=0;
	#120 dd=1;
	#130 aa=0;bb=0;cc=0;dd=0;
	#110 aa=1;bb=1;cc=1;
	#120 cc=0;
	#150 $stop;
	end
endmodule