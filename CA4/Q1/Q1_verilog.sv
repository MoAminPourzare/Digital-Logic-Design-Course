`timescale 1ns/1ns
module Q1_Dlatch (input D,clk, output Q);
	supply1 Vdd;
	MUX2to1 M1(Q,D,clk,Vdd,Q);
endmodule

module MUX2to1 (input a,b,s,en,output w);
	wire w1,w2;
	notif1#(14,18,16) G1(w2,a,w1);
	notif1#(14,18,16) G2(w2,b,s);
	notif1#(14,18,16) G3(w,w2,en);
	not#(7,9) G4(w1,s);
endmodule