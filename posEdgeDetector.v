module tb; // tb is a testbench. Verilog code is written inside blocks called modules
	// reg: creates registers in procedural blocks
	reg clk; // registers a clock
	reg sig; // registers a signal  
	
	always #5 clk = ~clk;
	
	initial begin
	
		$monitor("Time = %0t clk = %0d sig=%0d", $time, clk, sig);
		
		sig = 0;
		#5 clk = 0;
		#15 sig = 1;
		#20 sig = 0;
		#15 sig = 1;
		#10 sig = 0;
		#20 $finish;
	end
endmodule
	
