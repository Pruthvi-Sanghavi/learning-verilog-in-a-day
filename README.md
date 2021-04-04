# learning-verilog-in-a-day
One day streak at learning verilog

#### Reflection
I think I actually sort of missed the point of learning verilog. Verilog is used to simulate the logic gates in realtime without using any hardware. It also provides functionalities to visualize the signals.\
Verilog is a HDL (Hardware Description knowledge). It is a language used for describing a digital system like a network switch or a microprocessor or a memory or a flip−flop. It means, by using a HDL we can describe any digital hardware at any level. Designs, which are described in HDL are independent of technology, very easy for designing and debugging, and are normally more useful than schematics, particularly for large circuits. [Reference](https://www.tutorialspoint.com/vlsi_design/vlsi_design_verilog_introduction.htm#:~:text=Verilog%20is%20a%20HARDWARE%20DESCRIPTION,digital%20hardware%20at%20any%20level.)

Verilog is used to write digital logic.

#### Logic and Test Bench
In Verilog we can divide the program into two files: 
1. A logic verilog file which contains only the logic.
2. A [testbench](https://technobyte.org/testbench-in-verilog/) file which contains the values assigned to the original variables and is used for testing.

#### Abstractions of the verilog HDL

##### Gate level Modelling (Lower level of Abstraction)
- Verilog supports coding circuits using basic logic gates as predefined primitives. These primitives are instantiated like modules except that they are predefined in Verilog and do not need a module definition.

##### Data Flow Modelling (Middle level of Abstraction)
- Dataflow modeling is a very important way of implementing the design. All you need to know is the boolean logic equation of the output of the circuit in terms of its inputs. We use continuous assignments in dataflow modeling in most of the designs. The continuous assignments are made using the keyword assign.

##### Behavioral Modelling (Highest level of Abstraction)
- Behavioral modeling is the highest level of abstraction in the Verilog HDL. All that a designer need is the algorithm of the design, which is the basic information for any design. This level simulates the behavior of the circuits; the details are not specified. That’s helpful because the designer does not have to deal with complicated circuitry or equations. Just a simple truth table would suffice.

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
<p align="center">
  <img src="https://github.com/Pruthvi-Sanghavi/learning-verilog-in-a-day/blob/main/results/counter.png" height="200 px">
</p>

#### Fourth Program - The [AND](https://technobyte.org/verilog-and-gate/) Gate
<p align="center">
  <img src="https://github.com/Pruthvi-Sanghavi/learning-verilog-in-a-day/blob/main/and_gate/and_bm.png" height="300 px"/>
</p>

Compile - ```iverilog -o and_bm and_bm.v and_bm_tb.v```\
Run - ```vvp and_bm```\
Simulate - ```gtkwave dump.vcd &```
                                                                                                                      

