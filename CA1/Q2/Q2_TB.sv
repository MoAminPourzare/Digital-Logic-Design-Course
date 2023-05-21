`timescale 1ns/1ns
module Nandif_Notif_TB ();
	wire ww1,ww2;
	logic aa=0,bb=1,cc=0,en1=1,en2=1;
	Nandif1 G1(aa,bb,en1,ww1);
	Notif1 G2(cc,en2,ww2);
	initial begin
	#70 aa=1;cc=1;
	#80 aa=0;cc=0;
	#80 en1=0;en2=0;
	#100 $stop;
	end
endmodule