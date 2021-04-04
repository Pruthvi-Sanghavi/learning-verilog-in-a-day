// Coding and gate using behavior modelling (Highest Level of abstraction)
// Link: https://technobyte.org/verilog-and-gate/

// Y: output port
// A,B : input ports
// reg: a data object that holds the value over data simulation cycles
// always: Using it means we run the program sequentially
// (A, B): sensitity list, it includes the input signals used by always
// 1'b1: syntax for constant value that is a one bit number expressed in binary format with a value of 1
// 1'b0: syntax for constant value that is a one bit number expressed in binary format with a value of 0

module and_bm(output reg Y, input A, B);
	always @ (A, B) begin
		if (A == 1'b1 & B == 1'b1) begin
			Y = 1'b1;
		end
		else
			Y = 1'b0;
	end	
endmodule

	
