`timescale 1ns/1ns
module divider_TB();
	reg clear=0,clk=0,cnt=1,set=0;
	wire cout;
	wire [7:0] POut;
	divider dd(clear,clk,cnt,set,cout,POut);
	always #300 clk = ~clk;
	initial begin
	#40000 clear=1;
	#30000 clear=0;
	#50000 $stop;
	end
endmodule