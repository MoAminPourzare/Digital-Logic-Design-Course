`timescale 1ns/1ns
module detector_verilog(input clk,rst,j, output w);
	reg [2:0] pstate,nstate;
	parameter A=3'b000,B=3'b001,C=3'b010,D=3'b011,E=3'b100,F=3'b101;
	always@(pstate,j) begin
		nstate = 3'b000;
			case(pstate)
				A : nstate= j ? B : A;
				B : nstate= j ? B : C;
				C : nstate= j ? D : A;
				D : nstate= j ? E : C;
				E : nstate= j ? B : F;
				F : nstate= j ? D : A;
				default: nstate=A;
			endcase
	end
	assign w= (pstate==F) ? 1'b1 : 1'b0;
	always@(posedge clk,posedge rst) begin
		if (rst)
			pstate <= A;
		else
			pstate <= nstate;
	end
endmodule