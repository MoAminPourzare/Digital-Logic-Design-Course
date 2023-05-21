`timescale 1ns/1ns
module Q1_Circuit (input a,b,s,en,output w);
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