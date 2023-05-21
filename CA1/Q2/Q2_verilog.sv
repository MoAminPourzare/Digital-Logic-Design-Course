`timescale 1ns/1ns
module Nandif1 (input a,b,en,output w);
	supply0 Gnd;
	supply1 Vdd;
	wire w1,w2,w3,w4;
	nmos #(3,5,7) T5(w2,Gnd,en);
	nmos #(3,5,7) T6(w,w4,en);
	nmos #(3,5,7) T7(w4,w3,b);
	nmos #(3,5,7) T8(w3,Gnd,a);
	pmos #(4,7,9) T1(w1,Vdd,a);
	pmos #(4,7,9) T2(w1,Vdd,b);
	pmos #(4,7,9) T3(w,w1,w2);
	pmos #(4,7,9) T4(w2,Vdd,en);
endmodule

module Notif1 (input a,en,output w);
	supply0 Gnd;
	supply1 Vdd;
	wire w1,w2,w3;
	nmos#(3,5,7) T4(w3,Gnd,a);
	nmos#(3,5,7) T5(w,w3,en);
	nmos#(3,5,7) T6(w2,Gnd,en);
	pmos#(4,7,9) T1(w1,Vdd,a);
	pmos#(4,7,9) T2(w,w1,w2);
	pmos#(4,7,9) T3(w2,Vdd,en);
endmodule