`timescale 1ns/1ns
module NOT_NAND_TB();
	wire ww1,ww2;
	logic aa=1,bb=1,cc=1;
	NOT_gate G2(cc,ww1);
	NAND_gate G1(aa,bb,ww2);
	initial begin
	#90 bb=0;cc=0;
	#130 bb=1;cc=1;
	#120 $stop;
	end
endmodule