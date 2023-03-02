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

 <p align="center">
<img src="https://user-images.githubusercontent.com/90523478/222475624-b3e9c59c-3be6-4765-b623-df352d7003fb.png">
 </p> 
<p align="center">
Fig 2 Ring Oscillator circuit Diagram in Xschem  
</p>

--> Netlist Generated from Xschem of Ring Oscillator is given below :

```
** sch_path: /home/vanshikatanwar/Desktop/Lab_1/xschem_lab/ring_osc.sch
**.subckt ring_osc
XM1 net1 Vout VDD VDD sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM2 net2 net1 VDD VDD sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM3 Vout net2 VDD VDD sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM4 net1 Vout GND GND sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM5 net2 net1 GND GND sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM6 Vout net2 GND GND sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
Vdd VDD GND 1.8
.save i(vdd)
** begin user architecture code

.tran 4ps 5ns 0
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.save all


** end user architecture code
**.ends
.GLOBAL GND
.GLOBAL VDD
.end
```
Simulated Result of Ring Oscillator in Xschem with transient Analysis 


<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/222481304-91b7f761-9c0f-4ab3-90cd-989b85fb4bc7.png">
 </p> 
<p align="center">
Fig 3 Ngspice Window view at the time of simulation    
</p>

--> Waveform Displayed after Simulation 

<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/222482026-81b3047a-841e-47af-aee0-a4fac61d0fee.png">
 </p> 
<p align="center">
Fig 4 Waveform displayed of 3 -phase Ring Oscillator after simulation     
</p>




