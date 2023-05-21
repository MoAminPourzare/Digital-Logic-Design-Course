`timescale 1ns/1ns

module Q4_always (input serIn, clk, rst,output serOut, output logic [7:0] parOut);
	logic P_serIn;
	assign serOut=parOut[0];
	always @(negedge clk) begin
		P_serIn <= serIn;
		if (rst)
			#50 parOut<=8'b00000000;
		else
			#50 parOut<={P_serIn, parOut[7:1]};
	end

endmodule

module Q4_shifterRegister (input serIn, clk, rst,output serOut, output [7:0] parOut);
	wire [8:0] temp;
	assign serOut = temp[0];
	assign temp[8] = serIn;
	assign parOut = temp[7:0];
	genvar i;
	generate
		for (i=0;i<8;i=i+1) begin
			Q3_FlipFlop FF(temp[i+1],clk,rst,temp[i]);
		end
	endgenerate
endmodule

module Q3_FlipFlop (input D,clk,rst,output Q);
	wire w1,w2,w3;
	nor N1(w2,rst);
	and A1(w3,w2,D);
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