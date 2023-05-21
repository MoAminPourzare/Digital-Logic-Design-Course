`timescale 1ns/1ns
module Q4_Circuit_TB ();
	reg [7:0] aa;
	wire [7:0] ww1,ww2;
	assign aa=8'b10011010;
	Q4_Circuit C1(aa,ww1);
	assign #(34*8) ww2 = 1'b1 + ~aa;
	initial begin
	#250 $stop;
	end
endmodule