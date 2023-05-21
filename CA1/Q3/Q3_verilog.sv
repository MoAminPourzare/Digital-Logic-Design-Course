`timescale 1ns/1ns
module Circuit_Q3(input a,b,c,d,output w);
	wire w1,w2,w3,w4,w5;
	NAND_gate G1(w1,w2,w4);
	NAND_gate G2(a,b,w3);
	NAND_gate G3(w3,d,w5);
	NAND_gate G4(w5,w4,w);
	NOT_gate G5(d,w1);
	NOT_gate G6(c,w2);
endmodule

module NAND_gate (input a,b,output w);
	supply0 Gnd;
	supply1 Vdd;
	wire w1;
	nmos #(3,5,7) T1(w1,Gnd,a);
	nmos #(3,5,7) T2(w,w1,b);
	pmos #(4,7,9) T3(w,Vdd,a); 
	pmos #(4,7,9) T4(w,Vdd,b);
endmodule

module NOT_gate (input a,output w);
	supply0 Gnd;
	supply1 Vdd;
	nmos #(3,5,7) T1(w,Gnd,a);
	pmos #(4,7,9) T2(w,Vdd,a);
endmodule