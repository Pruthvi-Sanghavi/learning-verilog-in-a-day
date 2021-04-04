module counter(out, clk, reset); //Syntax: counter - name of module, (<port_list>) - ports input and output
	parameter WIDTH = 8; // construct that impart module reusability with different specification
	
	output[WIDTH-1:0] out; // Defining the output ports
	input clk,reset; // Defining the input ports
	
	reg[WIDTH - 1: 0] out; // Registering the port
	wire clk, reset; // 
	
	always @(posedge clk) // always@ - sequentially executed blocks, posedge: considers high signals
		out <= out + 1; // add one to output in case of high signal
		
	always @reset // do a reset
		if (reset) // if a reset has occured
			assign out = 0; // assign the output to null
		else // or else
			deassign out; // not null
endmodule // ends counter module

