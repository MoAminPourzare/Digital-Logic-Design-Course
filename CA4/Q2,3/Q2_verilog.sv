`timescale 1ns/1ns
module Q2_shifterRegister (input serIn, clk,output serOut, output [7:0] parOut);
	assign serOut = parOut[0];
	Q1_Dlatch D1(serIn, clk, parOut[7]);
	Q1_Dlatch D2(parOut[7], clk, parOut[6]);
	Q1_Dlatch D3(parOut[6], clk, parOut[5]);
	Q1_Dlatch D4(parOut[5], clk, parOut[4]);
	Q1_Dlatch D5(parOut[4], clk, parOut[3]);
	Q1_Dlatch D6(parOut[3], clk, parOut[2]);
	Q1_Dlatch D7(parOut[2], clk, parOut[1]);
	Q1_Dlatch D8(parOut[1], clk, parOut[0]);
endmodule

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
