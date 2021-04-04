# learning-verilog-in-a-day
One day streak at learning verilog

#### Installing the compiler

```sudo apt install iverilog```
- I am using gedit as a text editor.

#### Installing the Simulator
```sudo apt install gtkwave```

#### First Program - Hello World!
- Compile as follows
```iverilog -o helloworld helloworld.v```
- Run as follows
```vvp helloworld```

#### Second Program - Positive Edge Detector
- Compile as ```iverilog -o ped posEdgeDetector.v```
- Run as ```vvp ped```

#### Third Program - Counter
- Compile as ```iverilog -o counter counter_tb.c counter.v```
- Run as ```vvp counter```
- Simulate - ```gtkwave test.vcd &```
