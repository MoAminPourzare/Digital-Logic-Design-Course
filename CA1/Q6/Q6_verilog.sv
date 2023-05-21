`timescale 1ns/1ns
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

module Nandif1 (input a,b,en,output w);
	wire w1,w2,w3,w4;
	supply1 Vdd;
	supply0 Gnd;
	pmos #(4,7,9) T1(w1,Vdd,a);
	pmos #(4,7,9) T2(w1,Vdd,b);
	pmos #(4,7,9) T3(w,w1,w2);
	pmos #(4,7,9) T4(w2,Vdd,en);
	nmos #(3,5,7) T5(w2,Gnd,en);
	nmos #(3,5,7) T6(w,w4,en);
	nmos #(3,5,7) T7(w4,w3,b);
	nmos #(3,5,7) T8(w3,Gnd,a);
endmodule

module Circuit_Q4 (input a,b,c,d,output w);
	supply1 Vdd;
	wire w1;
	Notif1 G1(d,Vdd,w1);
	Notif1 G2(c,w1,w);
	Nandif1 G3(a,b,d,w);
endmodule

module NAND_gate (input a,b,output w);
	supply1 Vdd;
	supply0 Gnd;
	wire w1;
	pmos #(4,7,9) T1(w,Vdd,a); 
	pmos #(4,7,9) T2(w,Vdd,b);
	nmos #(3,5,7) T3(w1,Gnd,a);
	nmos #(3,5,7) T4(w,w1,b);
endmodule

module NOT_gate (input a,output w);
	supply1 Vdd;
	supply0 Gnd;
	pmos #(4,7,9) T5(w,Vdd,a);
	nmos #(3,5,7) T6(w,Gnd,a);
endmodule

module Circuit_Q3 (input a,b,c,d,output w);
	wire w1,w2,w3,w4,w5;
	NAND_gate nand1(w1,w2,w4);
	NAND_gate nand2(a,b,w3);
	NAND_gate nand3(w3,d,w5);
	NAND_gate nand4(w5,w4,w);
	NOT_gate not1(d,w1);
	NOT_gate not2(c,w2);
endmodule

module Circuit_Q5 (input a,b,c,d,output w);
	supply0 Gnd;
	supply1 Vdd;
	wire w1,w2,w3,w4,w5;
	pmos #(4,7,9) T1(w1,Vdd,a);
	pmos #(4,7,9) T2(w1,Vdd,b);
	pmos #(4,7,9) T3(w,w1,w5);
	pmos #(4,7,9) T4(w2,Vdd,c);
	pmos #(4,7,9) T5(w,w2,d);
	nmos #(3,5,7) T6(w4,Gnd,d);
	nmos #(3,5,7) T7(w4,Gnd,c);
	nmos #(3,5,7) T8(w3,w4,b);
	nmos #(3,5,7) T9(w,w3,a);
	nmos #(3,5,7) T10(w,w4,w5);
	not #(7,9) T11(w5,d);
endmodule