`timescale 1ns/1ns
module Q5_LFSR_TB();
	logic Init=0,ccllkk=0,Reset=0;
	wire [7:0] paralellOut;
	Q5_LFSR C1(Init,Reset,ccllkk,paralellOut);
	initial begin
		#200 ccllkk=0;
		#60 ccllkk=1;
		#60 Reset=1;
		#200 ccllkk=0;
		#60 ccllkk=1;
		#200 ccllkk=0;
		#60 Reset=0;
		#60 Init=1;
		#200 ccllkk=0;
		#200 ccllkk=1;
		#200 ccllkk=0;
		#60 ccllkk=1;
		#200 ccllkk=0;
		#60 ccllkk=1;
		#200 ccllkk=0;
		#60 ccllkk=1;
		#200 ccllkk=0;
		#200 $stop;
	end
endmodule
