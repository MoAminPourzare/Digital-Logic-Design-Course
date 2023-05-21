`timescale 1ns/1ns
module moore10110(input clk,rst,j,cntrl, output reg w,i0);
	reg [2:0] pstate,nstate;
	parameter A=3'b000,B=3'b001,C=3'b010,D=3'b011,E=3'b100,F=3'b101;
	always@(pstate,j,cntrl) begin
		nstate = A;
		w=1'b0;
		i0=1'b0;
			case(pstate)
				A : nstate= j ? B : A;
				B : nstate= j ? B : C;
				C : nstate= j ? D : A;
				D : nstate= j ? E : C;
				E : begin nstate= j ? B : F; i0=1'b1; end
				F : begin nstate= cntrl ? A : F; w=1'b1; end
				default: nstate=A;
			endcase
	end
	always@(posedge clk,posedge rst) begin
		if (rst)
			pstate <= A;
		else
			pstate <= nstate;
	end
endmodule