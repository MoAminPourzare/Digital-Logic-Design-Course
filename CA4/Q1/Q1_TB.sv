`timescale 1ns/1ns
module Q1_Dlatch_TB ();
	logic dd=0,ccllkk=1;
	wire qq;
	Q1_Dlatch C1(.D(dd),.clk(ccllkk),.Q(qq));
	initial begin
		#100 ccllkk=1;
		#120 ccllkk=0;
		#40 dd=1;
		#50 dd=0;
		#70 ccllkk=1;
		#50 dd=1;
		#60 dd=0;
		#170 ccllkk=0;
		#40 ccllkk=1;
		#8 ccllkk=0;
		#210 dd=1;
		#14 ccllkk=1;
		#20 ccllkk=0;
		#9 ccllkk=1;
		#40 ccllkk=0;
		#100 ccllkk=1;
		#20 dd=0;
		#40 ccllkk=0;
		#50 dd=1;
		#50 ccllkk=1;
		#9 ccllkk=0;
		#20 dd=0;
		#60 ccllkk=0;
		#10 dd=1;
		#40 ccllkk=1;
		#170 ccllkk=0;
		#70 $stop;
	end
endmodule