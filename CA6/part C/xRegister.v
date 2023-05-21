`timescale 1ns/1ns
module xRegister(input clk, rst, load, input [15:0] inBus, output reg [15:0] outBus);
	always @(posedge clk, posedge rst)
		if (rst)
			outBus <= 16'b0000000000000000;
		else
			outBus <= inBus;
endmodule