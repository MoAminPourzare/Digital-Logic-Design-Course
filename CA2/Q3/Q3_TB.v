`timescale 1ns/1ns
module Q3_Circuit_TB ();
	reg en=1,ss=1;
	reg [0:7] aa,bb;
	assign aa=8'b10101110;
	assign bb=8'b01101000;
	wire [7:0] ww1;
	wire [7:0] ww2;
	Q3_Circuit C1(aa,bb,ss,en,ww1);
	Q3_Circuit_Assign C2(aa,bb,ss,en,ww2);
	initial begin
	#1000 ss=0;
	#1000 ss=1;
	#1000 $stop;
	end
endmodule
