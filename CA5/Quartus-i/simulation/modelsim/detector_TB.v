`timescale 1ns/1ns
module moore10110_TB();
	reg clkk=0,rstt=0,jj=0;
	wire ww1,ww2;
	detector_verilog moore(clkk,rstt,jj,ww1);
	moore10110 pre(clkk,rstt,jj,ww2);
	always #30 clkk <= ~clkk;
	initial begin
	#30 rstt=1;
	#40 rstt=0;
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
	#200 $stop;
	end
endmodule
