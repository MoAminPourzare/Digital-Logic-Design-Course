`timescale 1ns/1ns
module BLOCK (input a,b,output w2,w1);
	wire w;
	nor #(8,18) nor1(w1,a,w);
	not #(7,9) not1(w,b);
	xor #(15,25) xor1(w2,a,w);
endmodule
module Q4_Circuit (input [7:0] a,output [7:0] w);
	wire wi[7:0];
	supply1 Vdd;
	BLOCK B1(a[0],Vdd,w[0],wi[0]);
	BLOCK B2(a[1], wi[0], w[1], wi[1]);
	BLOCK B3(a[2], wi[1], w[2], wi[2]);
	BLOCK B4(a[3], wi[2], w[3], wi[3]);
	BLOCK B5(a[4], wi[3], w[4], wi[4]);
	BLOCK B6(a[5], wi[4], w[5], wi[5]);
	BLOCK B7(a[6], wi[5], w[6], wi[6]);
	BLOCK B8(a[7], wi[6], w[7], wi[7]);
endmodule