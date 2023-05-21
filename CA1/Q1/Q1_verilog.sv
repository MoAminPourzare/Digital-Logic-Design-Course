`timescale 1ns/1ns
module NAND_gate(input a,b ,output w);
	supply0 Gnd;
	supply1 Vdd;
	wire w1;
	nmos #(3,5,7) T1(w,w1,a);
	nmos #(3,5,7) T2(w1,Gnd,b);
	pmos #(4,7,9) T3(w,Vdd,a);
	pmos #(4,7,9) T4(w,Vdd,b);
endmodule

module NOT_gate(input a,output w);
	supply0 Gnd;
	supply1 Vdd;
	nmos #(3,5,7) T1(w,Gnd,a);
	pmos #(4,7,9) T2(w,Vdd,a);
endmodule