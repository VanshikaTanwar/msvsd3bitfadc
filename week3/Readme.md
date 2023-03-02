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


## Generating Layout of Ring Oscillator using ALIGN Tool 

Now, our next step is to generate the layout of ring oscillator using ALIGN Tool . For  generating it we need to follow some steps : -

   1) We first need to do some changes in the netlist which we got from the xschem as this netlist is given in the input of ALIGN Tool.
   2) After done changes in the netlist , save that netlist with ".sp" extension under the ALIGN-public/ALIGN-pdk-sky130/examples/ring_osc directory 

   As, in my case I have first created the folder with the name "*ring_osc*" under the directory  /Desktop/vsd_3FADC/ALIGN-public/ALIGN-pdk-sky130/examples and then,    save the modified netlist under this *ALIGN-public/ALIGN-pdk-sky130/examples/ring_osc* directory with the name "*ring_osc.sp*".
    
   3) Now, after saving the modified netlist, we need to run the ALIGN Layout Generator for our design Ring Oscillator using these commands:
    
    First go under this directory - /Desktop/vsd_3FADC/ALIGN-public
    and then, run the folowing commands which are given below: -
    ```
    source general/bin/activate
    cd work
    schematic2layout.py ../ALIGN-pdk-sky130/examples/ring_osc -p ../pdks/SKY130_PDK/
    ```
   4) After , running this command, the GDS and LEF file is generated under work directory of ALIGN-public directory .
   5) We will use klayout for observing the generated GDS and LEF file.
   6) And , also after this we need to open the .GDS file of Ring Oscillator which we get from ALIGN Tool in Magic also, for observing the Layout of Ring Oscillator.
       For opening the GDS file in magic , First open the Magic Tool with sky130 tech and then go to *File-->Read GDS -->Go to the file location          
       /home/vanshikatanwar/Desktop/vsd_3FADC/ALIGN-public/work* select *RING_OSC_0.python.gds* file and click on *Open* it. 
       Then, it opens up the layout of Ring oscilator in magic and press i so , that the whole layout is selected .
   7) Now , we need to extract the Spice Netlist from ALIGN Layout . For extrating the netlist , go to Tkcon window and write the following commands which are given below: -
        ```
        extract do local
        extract all
        ext2spice lvs
        ext2spice cthresh 0 rthresh 0
        ext2spice
        ```
   8) Now, modify the extracted netlist from ALIGN Layout means we need to modify that netlist which is just extracted from magic tool using above commands 
   9) Just copy and paste the content of xschem generated spice netlist into the above generated netlist . And after modifying save that netlist.
   10) Now, open the new terminal and open Ngspice in that terminal by executing this command "ngspice" the Ngspice terminal window opens up 
   11) Now, open your modified ring oscillator spice file uisng this command "*modified_RING_OSC.spice*" 
   12) Then, *run* execute this in Ngspice window itself.
   13)  After this *Plot Vout* run this command and then your waveform will be displayed in front of you.
   14)  Match the genrated waveform wih the waveform generated from xschem . If both waveform matches then, you can proceed to next step if not then, first solve
           the error and then move to further steps .
         
         
         ### Below are the Steps by steps process shown with SS of the steps which I have explained above: 
         
         Step 1 Modified Netlist of ring_osc for ALIGN TOOL Input

          .subckt ring_osc Vout VDD GND
          XM1 net1 Vout VDD VDD sky130_fd_pr__pfet_01v8 L=150e-09 W=10.5e-7 nf=2
          XM2 net2 net1 VDD VDD sky130_fd_pr__pfet_01v8 L=150e-09 W=10.5e-7 nf=2
          XM3 Vout net2 VDD VDD sky130_fd_pr__pfet_01v8 L=150e-09 W=10.5e-7 nf=2
          XM4 net1 Vout GND GND sky130_fd_pr__nfet_01v8 L=150e-09 W=10.5e-7 nf=2
          XM5 net2 net1 GND GND sky130_fd_pr__nfet_01v8 L=150e-09 W=10.5e-7 nf=2
          XM6 Vout net2 GND GND sky130_fd_pr__nfet_01v8 L=150e-09 W=10.5e-7 nf=2
          .ends ring_osc
          
          Step 2  Modified Netlist save
          
          Save the modified netlist under this *ALIGN-public/ALIGN-pdk-sky130/examples/ring_osc* directory with the name "*ring_osc.sp*".
          
          Step 3 Running the ALIGN Tool Generator for our design Ring oscillator
          
          <p align="center">
          <img src="https://user-images.githubusercontent.com/90523478/222552307-a0390369-21ef-4cfd-b466-b573b0270cf8.png">
          </p> 
          <p align="center">
                Fig 5  Running the ALIGN Tool Generator    
          </p>
          
          <p align="center">
          <img src="https://user-images.githubusercontent.com/90523478/222553097-87c1aa01-1d04-4f08-9be9-2a9d923de721.png">
          </p> 
          <p align="center">
                Fig 6  Running the ALIGN Tool Generator
          </p>
          
          Step 4 Generated GDS and LEF under work directory 
          
          <p align="center">
          <img src="https://user-images.githubusercontent.com/90523478/222554094-efc4c25f-c072-4e08-a45b-1ecae29cf840.png">
          </p> 
          <p align="center">
                Fig 7  Generated GDS and LEF file under work directory
          </p>
          
          Step 5 Klayout Observation of GDS and LEF File
           
          <p align="center">
          <img src="https://user-images.githubusercontent.com/90523478/222555535-7ab6f844-18e9-4113-bb6b-d05b8cd36537.png">
          </p> 
          <p align="center">
                Fig 8  .GDS file view in Klayout
          </p>
          
          
          <p align="center">
          <img src="https://user-images.githubusercontent.com/90523478/222556031-a76636d3-a75f-421c-8e8f-4cd726d7443e.png">
          </p> 
          <p align="center">
                Fig 9  .python.GDS file view in Klayout
          </p>
          
          <p align="center">
          <img src="https://user-images.githubusercontent.com/90523478/222556256-681e028d-11f7-455b-99c0-e0dd997a23ef.png">
          </p> 
          <p align="center">
                Fig 10  .LEF file view in Klayout
          </p>
          
          Step 6 Opening of Layout of RING OSCILLATOR .i.e., .gds file in Magic Tool
          
          <p align="center">
          <img src="https://user-images.githubusercontent.com/90523478/222558179-c458c08d-111c-4f7b-a0a8-e3debc827f17.png">
          </p> 
          <p align="center">
                Fig 11  Opening of .GDS file view in Magic Tool
          </p> 
          
          
          <p align="center">
          <img src="https://user-images.githubusercontent.com/90523478/222557196-65126ea4-8370-4597-bff8-a946b84a436f.png">
          <img src="https://user-images.githubusercontent.com/90523478/222558041-579c5dc2-2b5e-4cd1-803d-2dcefd50757d.png">
          </p> 
          <p align="center">
                Fig 12  Zoom in view of .GDS file in Magic Tool
          </p> 
          
         Step 7 Extracting the netlist of gds file (layout of ring oscillator which opens in Magic Tool)
         
         <p align="center">
          <img src="https://user-images.githubusercontent.com/90523478/222560246-5848d8c9-265c-4e61-ad86-7f2aa4500fc5.png">
          </p> 
          <p align="center">
                Fig 13  Tkcon window view for extracting the Netlist 
          </p>
          
         Extracted Netlist from ALIGN Layout is shown below:-
          ```
          * NGSPICE file created from RING_OSC.ext - technology: sky130A

          .subckt RING_OSC
           X0 a_488_3864# a_230_840# a_147_840# a_147_840# sky130_fd_pr__nfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
           X1 a_147_840# a_488_3864# a_200_561# a_147_840# sky130_fd_pr__nfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
           X2 a_147_840# a_230_840# a_488_3864# a_147_840# sky130_fd_pr__nfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
           X3 a_200_561# a_488_3864# w_0_1512# w_0_1512# sky130_fd_pr__pfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
           X4 a_230_840# a_200_561# w_0_1512# w_0_1512# sky130_fd_pr__pfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
           X5 w_0_1512# a_488_3864# a_200_561# w_0_1512# sky130_fd_pr__pfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
           X6 w_0_1512# a_200_561# a_230_840# w_0_1512# sky130_fd_pr__pfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
           X7 a_230_840# a_200_561# a_147_840# a_147_840# sky130_fd_pr__nfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
           X8 a_147_840# a_200_561# a_230_840# a_147_840# sky130_fd_pr__nfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
           X9 a_488_3864# a_230_840# w_0_1512# w_0_1512# sky130_fd_pr__pfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
           X10 a_200_561# a_488_3864# a_147_840# a_147_840# sky130_fd_pr__nfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
           X11 w_0_1512# a_230_840# a_488_3864# w_0_1512# sky130_fd_pr__pfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
           C0 a_200_561# a_230_840# 0.58fF
           C1 a_488_3864# a_230_840# 0.47fF
           C2 a_200_561# a_488_3864# 0.60fF
           C3 a_230_840# w_0_1512# 3.37fF
           C4 a_200_561# w_0_1512# 3.05fF
           C5 a_488_3864# w_0_1512# 2.79fF
           C6 a_200_561# a_147_840# 0.42fF
           C7 a_488_3864# a_147_840# 2.20fF
           C8 a_230_840# a_147_840# 1.78fF
           C9 w_0_1512# a_147_840# 7.62fF
           .ends
           ```
                                       
           
           Step 8 and Step 9 Modifying the extracted Netlist from ALIGN Layout and saving that modified netlist 
          
          Modified netlist is shown below:-
      
                  ```
                            * NGSPICE file created from RING_OSC.ext - technology: sky130A
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

                           .subckt RING_OSC
                           X0 a_488_3864# a_230_840# a_147_840# a_147_840# sky130_fd_pr__nfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
                           X1 a_147_840# a_488_3864# a_200_561# a_147_840# sky130_fd_pr__nfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
                           X2 a_147_840# a_230_840# a_488_3864# a_147_840# sky130_fd_pr__nfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
                           X3 a_200_561# a_488_3864# w_0_1512# w_0_1512# sky130_fd_pr__pfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
                           X4 a_230_840# a_200_561# w_0_1512# w_0_1512# sky130_fd_pr__pfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
                           X5 w_0_1512# a_488_3864# a_200_561# w_0_1512# sky130_fd_pr__pfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
                           X6 w_0_1512# a_200_561# a_230_840# w_0_1512# sky130_fd_pr__pfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
                           X7 a_230_840# a_200_561# a_147_840# a_147_840# sky130_fd_pr__nfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
                           X8 a_147_840# a_200_561# a_230_840# a_147_840# sky130_fd_pr__nfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
                           X9 a_488_3864# a_230_840# w_0_1512# w_0_1512# sky130_fd_pr__pfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
                           X10 a_200_561# a_488_3864# a_147_840# a_147_840# sky130_fd_pr__nfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
                           X11 w_0_1512# a_230_840# a_488_3864# w_0_1512# sky130_fd_pr__pfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
                           C0 a_200_561# a_230_840# 0.58fF
                           C1 a_488_3864# a_230_840# 0.47fF
                           C2 a_200_561# a_488_3864# 0.60fF
                           C3 a_230_840# w_0_1512# 3.37fF
                           C4 a_200_561# w_0_1512# 3.05fF
                           C5 a_488_3864# w_0_1512# 2.79fF
                           C6 a_200_561# a_147_840# 0.42fF
                           C7 a_488_3864# a_147_840# 2.20fF
                           C8 a_230_840# a_147_840# 1.78fF
                           C9 w_0_1512# a_147_840# 7.62fF

                           .ends
                            ```


             
           Step 10, 11 and 12 execution of Spice File in Ngspice is shown below :-

          <p align="center">
          <img src="https://user-images.githubusercontent.com/90523478/222564945-7f327f35-2436-4211-9130-fe4226fc1172.png">
          </p> 
          <p align="center">
                Fig 14  Modified Spice File execution  in Ngspice window  
          </p>

           Step 13 Output Waveform From Above POST Layout simulation using ALIGN Tool.
            <p align="center">
            <img src="https://user-images.githubusercontent.com/90523478/222568920-3a1c0e7f-c2f2-4d21-b691-120973ebd759.png">
            </p> 
            <p align="center">
             Fig 15  Waveform obtained from modified netlist from above Post Layout Simulation using ALIGN Tool  
             </p>             
                        
                        
