`timescale 1ns/1ns
module register(input clk, rst, load, init, input [15:0] inBus, output reg [15:0] outBus);
	always @(posedge clk, posedge rst)
		if (rst)
			outBus <= 16'b1111111111111111;
		else begin
			if (init)
				outBus <= 16'b1111111111111111;
				else
					if(load)
						outBus <= inBus;
	end
endmodule
