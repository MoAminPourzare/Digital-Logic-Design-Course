`timescale 1ns/1ns
module Circuit_Q4 (input a,b,c,d,output w);
	supply1 Vdd;
	wire w1;
	Notif1 G1(d,Vdd,w1);
	Notif1 G2(c,w1,w);
	Nandif1 G3(a,b,d,w);
endmodule

module Notif1 (input a,en,output w);
	supply0 Gnd;
	supply1 Vdd;
	wire w1,w2,w3;
	nmos#(3,5,7) T1(w3,Gnd,a);
	nmos#(3,5,7) T2(w,w3,en);
	nmos#(3,5,7) T3(w2,Gnd,en);
	pmos#(4,7,9) T4(w1,Vdd,a);
	pmos#(4,7,9) T5(w,w1,w2);
	pmos#(4,7,9) T6(w2,Vdd,en);
endmodule

module Nandif1 (input a,b,en,output w);
	wire w1,w2,w3,w4;
	supply0 Gnd;
	supply1 Vdd;
	nmos #(3,5,7) T1(w2,Gnd,en);
	nmos #(3,5,7) T2(w,w4,en);
	nmos #(3,5,7) T3(w4,w3,b);
	nmos #(3,5,7) T4(w3,Gnd,a);
	pmos #(4,7,9) T5(w1,Vdd,a);
	pmos #(4,7,9) T6(w1,Vdd,b);
	pmos #(4,7,9) T7(w,w1,w2);
	pmos #(4,7,9) T8(w2,Vdd,en);
endmodule