`timescale 1ns/1ns
module mult (input[15:0]a,b,output[15:0]q);
	wire[31:0]temp;
	assign temp=a*b;
	assign q=temp[31:16];
endmodule