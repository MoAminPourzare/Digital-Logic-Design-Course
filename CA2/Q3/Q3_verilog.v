`timescale 1ns/1ns
module Q1_Circuit_3 (input a,b,s,en,output w);
	wire w1,w2;
	Notif1 G1(a,w1,w2);
	Notif1 G2(b,s,w2);
	Notif1 G3(w2,en,w);
	NOT_gate G4(s,w1);
endmodule

module Notif1 (input a,en,output w);
	supply1 Vdd;
	supply0 Gnd;
	wire w1,w2,w3;
	pmos#(4,7,9) T1(w1,Vdd,a);
	pmos#(4,7,9) T2(w,w1,w2);
	pmos#(4,7,9) T3(w2,Vdd,en);
	nmos#(3,5,7) T4(w3,Gnd,a);
	nmos#(3,5,7) T5(w,w3,en);
	nmos#(3,5,7) T6(w2,Gnd,en);
endmodule

module NOT_gate(input a,output w);
	supply1 Vdd;
	supply0 Gnd;
	nmos #(3,5,7) T1(w,Gnd,a);
	pmos #(4,7,9) T2(w,Vdd,a);
endmodule

module Q3_Circuit (input [7:0]a,[7:0]b,input s,en,output [7:0]w);
	Q1_Circuit_3 C1(b[0], a[0], s, en, w[0]);
	Q1_Circuit_3 C2(b[1], a[1], s, en, w[1]);
	Q1_Circuit_3 C3(b[2], a[2], s, en, w[2]);
	Q1_Circuit_3 C4(b[3], a[3], s, en, w[3]);
	Q1_Circuit_3 C5(b[4], a[4], s, en, w[4]);
	Q1_Circuit_3 C6(b[5], a[5], s, en, w[5]);
	Q1_Circuit_3 C7(b[6], a[6], s, en, w[6]);
	Q1_Circuit_3 C8(b[7], a[7], s, en, w[7]);
endmodule

module Q3_Circuit_Assign (input [7:0]a,[7:0]b,input s,en,output [7:0]w);
	assign w=~s ? a : b ;
endmodule
