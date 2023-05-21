`timescale 1ns/1ns
module controller(input clk,rst,start,co,
		output reg ready,busy,zc,enc,loadx,loadt,loadr,initt,initr,s);
	reg [2:0] ps,ns;
	parameter [2:0]
	Idle = 0, Init = 1, Begin = 2, Mult1 = 3, Mult2 = 4, Mult3 = 5, Add = 6;
	always @(ps,co,start) begin
		ns = Idle;
		case(ps)
		Idle:
			ns = (start) ? Init : Idle;
		Init:
			ns = (start) ? Init : Begin;
		Begin:
			ns = Mult2;
		Mult1:
			ns = Mult2;
		Mult2:
			ns = Mult3;
		Mult3:
			ns = Add;
		Add:
			ns = (co) ? Idle : Mult1;
		endcase
	end
	always @(ps,co,start) begin
		ready = 1'b0; zc = 1'b0; enc = 1'b0; loadx = 1'b0; loadt = 1'b0;
		initt = 1'b0; initr = 1'b0; s = 1'b0; loadr = 1'b0; busy = 1'b0;
		case(ps)
			Idle:begin
				ready = 1'b1;
			end
			Init:begin
				initt = 1'b1;
				initr = 1'b1;
				zc = 1'b1;
			end
			Begin:begin
				loadx=1'b1;
			end
			Mult1:begin
				s=1'b1;
				loadt=1'b1;
				busy=1'b1;
			end
			Mult2:begin
				s=1'b0;
				loadt=1'b1;
				busy=1'b1;
			end
			Mult3:begin
				s=1'b1;
				loadt=1'b1;
				busy=1'b1;
			end
			Add:begin
				enc=1'b1;
				loadr=1'b1;
				busy=1'b1;
			end
		endcase
	end
	always @(posedge clk, posedge rst) begin
		if(rst == 1'b1)
			ps <= Idle;
		else
			ps <= ns;
	end
endmodule
