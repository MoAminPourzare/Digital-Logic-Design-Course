`timescale 1ns/1ns
module Q3_FlipFlop_TB ();
	logic dd=0,ccllkk=0,reset=0;
	wire qq;
	Q3_FlipFlop C1(.D(dd),.clk(ccllkk),.rst(reset),.Q(qq));
	initial begin
		#90 dd=1;
		#40 ccllkk=1;
		#50 ccllkk=0;
		#90 dd=0;
		#40 ccllkk=1;
		#50 ccllkk=0;
		#100
		#90 dd=1;
		#40 ccllkk=1;
		#50 ccllkk=0;
		#60 reset=1;
		#40 ccllkk=1;
		#50 ccllkk=0;
		#200 $stop;
	end
endmodule