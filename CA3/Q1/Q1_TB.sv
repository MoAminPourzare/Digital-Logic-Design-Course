`timescale 1ns/1ns
module Q1_TB();
	wire zer,zer_y,neg,neg_y;
	logic [2:0] opc = 3'b0;
	logic [15:0] mm = 0,nn = 0;
	logic [15:0] outF,outF_y;
	logic cc = 0;
	Q1 ALU1(nn,mm,cc,opc,outF,zer,neg);
	Q1_yosys ALU2(nn,mm,cc,opc,outF_y,zer_y,neg_y);
	initial repeat(40) #40 mm = $random;
	initial repeat(40) #40 nn = $random;
	initial repeat(40) #40 opc = opc + 1'b1;
	initial repeat(40) #40 cc = cc + 1'b1;
	initial repeat(30) #30 nn = $random;
	#450 $stop;
	end
endmodule