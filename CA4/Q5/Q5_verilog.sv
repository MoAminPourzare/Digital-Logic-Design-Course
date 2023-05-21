`timescale 1ns/1ns

module Q5_LFSR (input syncInit,syncReset,clk, output [7:0] parOut);
	wire zero;
	assign zero = 1'b0;
	wire w1,w2,w3,w4;
	or O1(w1,syncInit,syncReset);
	xor X1(w2,parOut[0],parOut[2]);
	xor X2(w3,w2,parOut[5]);
	xor X3(w4,w3,parOut[6]);
	Q4_FlipFlop F1(parOut[0], clk, syncReset, syncInit, parOut[7]);
	Q4_FlipFlop F2(parOut[7], clk, w1, zero, parOut[6]);
	Q4_FlipFlop F3(parOut[6], clk, w1, zero, parOut[5]);
	Q4_FlipFlop F4(parOut[5], clk, w1, zero, parOut[4]);
	Q4_FlipFlop F5(parOut[4], clk, w1, zero, parOut[3]);
	Q4_FlipFlop F6(parOut[3], clk, w1, zero, parOut[2]);
	Q4_FlipFlop F7(parOut[2], clk, w1, zero, parOut[1]);
	Q4_FlipFlop F8(parOut[1], clk, w1, zero, parOut[0]);
endmodule

module Q4_FlipFlop (input D,clk,rst,pst,output Q);
	wire w1,w2,w3;
	not N1(w2,rst);
	and A1(w3,w2,D);
	or O1(w3,pst);
	Q1_Dlatch D1(w3,clk,w1);
	Q1_Dlatch D2(w1,~clk,Q);
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