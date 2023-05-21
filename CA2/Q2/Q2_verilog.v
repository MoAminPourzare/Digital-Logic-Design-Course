`timescale 1ns/1ns
module Q2_Circuit (input a,b,c,d,s,m,output w);
	wire w1,w2,w3,w4;
	NOT_gate G1(s,w4);
	NOT_gate G2(m,w3);
	Notif1 G3(a,s,w1);
	Notif1 G4(b,w4,w1);
	Notif1 G5(c,w4,w2);
	Notif1 G6(d,s,w2);
	Notif1 G7(w1,w3,w);
	Notif1 G8(w2,m,w);
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