`timescale 1ns/1ns
module Q2_TB ();
	logic cc=1'b0;
	logic [15:0] outF1,outF2;
	logic [15:0] mm=3'b101,nn=3'b000;
	logic [2:0] opc;
	wire zer,neg,zer_y,neg_y;
	Q2 A1(mm, nn, cc, opc, outF1, zer, neg);
	Q2_yosys A2(mm, nn, cc, opc, outF2, zer_y, neg_y);
	initial begin
		opc=3'd0;
		repeat (20) begin 
			#20 mm=$random; #20 nn=$random; #40 cc=$random;
		end
		repeat (10) begin 
			#40 mm=$random; #40 nn=$random; cc=$random;
		opc=3'd1;
		#100 nn=$random;
		#40 mm=$random;
		#20 cc=$random;
		end
		#450 $stop;
		end
endmodule