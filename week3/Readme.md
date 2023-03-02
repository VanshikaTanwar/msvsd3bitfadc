# Week 3 work

## Task To Do this week 

In Week 3 we need to take the Analog Block of 4 bit Asynchronous UP Counter from mixed signal design of it 
from this Github https://github.com/syedimaduddin/4-bit_Asynchronous_Up_Counter_using_Mixed-Signal

So, from this Github repo we need to take the Analog Block and Need to generate its GDS/LEF/DEF file using ALIGN Tool and other related files with help of xschem's Netlist of the design.

After this, we need to write the Dummy Verilog Code of Analog Block and also, we need to write the digital verilog code for Digital Block and used in OpenFASOC and then , observe the final Layout.




### Analog Block Ring Oscillator Circuit Diagram in Xschem 

In this design, 4 bit Asynchronous UP Counter using mixed signal - The Analog Block is Ring Oscillator and Digital Block is T Flip Flop .

Ring Oscillator 

As , it's name suggest ring oscillator in which ring means a type of closed network or a loop with some feedback something and oscillator means something which oscillates between any two or different values.

So, A ring Oscillator is a type of device which contains an odd number of NOT gates in series connected with each other one after another in a loop whose output is oscillated between two values i.e., between two voltage levels High and Low  or (1 or 0) without any External Input provided .

The NOT Gate in Ring Oscillator is connected in such a way that the output of first inverter is the input of second inverter and so on .

 <p align="center">
<img src="https://user-images.githubusercontent.com/90523478/222474161-05dade18-08f5-4fc3-b0b0-0faf80a0edd6.png">
 </p> 
<p align="center">
Fig 1 Ring Oscillator   
</p>


