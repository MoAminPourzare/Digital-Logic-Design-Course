`timescale 1ns/1ns
module tanx_TB();
	wire [15:0] resultt;
	wire readyy, busyy;
	reg clkk,rstt,startt;
	reg [15:0] xx;
	RTL UUT(readyy, clkk, rstt, startt, xx, busyy, resultt);
	initial begin
		rstt=1'b1;
		clkk=1'b0;
		startt=1'b0;
	end
	initial #24 rstt = 1'b0;
	always #20 clkk = ~clkk;
	initial begin
		#100 startt=1'b1;
		#11 xx=16'b0110010010000111;
		#100 startt=1'b0;
	end
endmodule
		
