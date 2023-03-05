# Week 2 work

OpenROAD Installation
for installation of OpenROAD follow these steps which are given below:-

``` 
cd
 git clone --recursive https://github.com/The-OpenROAD-Project/OpenROAD.git
 cd OpenROAD
 ./etc/DependencyInstaller.sh
 cd
 git clone --recursive https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts
 cd OpenROAD-flow-scripts
 ./build_openroad.sh –local
 export OPENROAD=~/OpenROAD-flow-scripts/tools/OpenROAD
 export PATH=/OpenROAD-flow-scripts/tools/install/OpenROAD/bin:/OpenROAD-flow-scripts/tools/install/yosys/bin:~/OpenROAD-flow-scripts/tools/install/LSOracle/bin:$PATH"
 ``` 
 OpenFasoc installation
 
 For installing openfasoc, use these steps:-
 ```
cd
git clone https://github.com/idea-fasoc/openfasoc
cd openfasoc
./dependencies.sh
```
## OpenFASoC: Temperature Sensor Generator
## Temperature Sensor Auxiliary Cells
An overview of how the Temperature Sensor Generator (temp-sense-gen) works internally in OpenFASoC

### Circuit
This generator creates a compact mixed-signal temperature sensor based on the topology from this paper. It consists of a ring oscillator whose frequency is controlled by the voltage drop over a MOSFET operating in subthreshold regime, where its dependency on temperature is exponential.

![tempsense_ckt](https://user-images.githubusercontent.com/83899035/221102960-1f5c8fdc-b63d-4392-9e59-b25b74a0abce.png)


The physical implementation of the analog blocks in the circuit is done using two manually designed standard cells:

1. HEADER cell, containing the transistors in subthreshold operation;

2. SLC cell, containing the Split-Control Level Converter.

The gds and lef files of HEADER and SLC cells are pre-created before the start of the Generator flow.



#### OpenFASOC flow for Temperature Sensor Generation
To configure circuit specifications, modify the test.json specfile in the generators/temp-sense-gen/ folder.

To run the default generator, cd into openfasoc/generators/temp-sense-gen/ and execute the following command:

`make sky130hd_temp`

 <p align="center">
<img src="https://user-images.githubusercontent.com/90523478/222925421-bcc05d7a-82f2-4d55-ac65-e27c93cb9058.png">
 </p> 

The default circuit’s physical design generation can be divided into three parts:

1. Verilog generation

2. RTL-to-GDS flow (OpenROAD)

3. Post-layout verification (DRC and LVS)

## Verilog Generation
To run verilog generation, type the command `make sky130hd_temp_verilog` . The screenshot is attached below...

In the given figure below, it is showing that , the tool is trying to minimize the error, by varying the number of inverters and headers for the given range of temperature.

<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/222952771-bdebdf4e-0b3a-4cf9-8013-c57272b0436c.png">
 </p> 


<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/222952812-434f0ea7-129d-4833-ab55-1bf99a4974f9.png">
 </p> 

The test.json file displays corresponds to the temp_sense_gen.
<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/222953925-b12f35ef-f9d8-45fe-8955-740a90f3781b.png">
 </p>

In the above json file , as it can be observed that temperature is being varied from -20 C to 100 C range . Based on the range given , the generator calculates the number of header and inverters to minimize the error . 


The number of inverters in the ring oscillator  and of HEADER cells in parallel are optimized using a nearest neighbour approach with experimental data from models/modelfile.csv.

## Synthesis 

The OpenROAD Flow starts with a flow configuration files which is config.mk , the choosen platform is sky130hd and the verilog files are generated from the previous part. The config.mk file is given below:-

<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/222963573-1c05ef0d-3c21-43ec-8979-9458940b0d88.png">
 </p>

The synthesis has been ran using Yosys to find the implementation of circuit appropriately from the availabe cells in the platform. The synthesized verilog netlist is saved and is shown in the below figure :- 

<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/222963979-30367ac5-751a-4855-92c5-2225a38f7206.png">
 </p>
 
 ## Floorplan 
 
 For the physical Design the floorplan is generated with OpenROAD , which requires a description of the power delivery network in pdn.cfg
 
 The Floorplan 
 The floorplan final power report is shown in the image given below:

 <p align="center">
<img src="https://user-images.githubusercontent.com/90523478/222964402-8d9dd9a6-5686-4620-bd5b-b03f8f442882.png">
 </p>

This temperature sensor design basically implements the two voltage domain one for the VDD that power ups the most of the circuit and another is for the VIN that power ups the ring oscillator and which is an output of the HEADER cells . 

Such type of voltage domains are created within the floorplan.tcl script , as shown below :

<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/222964752-e6be14a2-9ce2-4b5d-9b16-5d287e9d6bac.png">
 </p>

In the above image, it is observed that the line #34 will create a voltage domain named TEMP_ANALOG with area coordinates as defined in config.mk.Lines #36 to #38 will initialize the floorplan, as default in OpenROAD Flow, from the die area, core area and place site coordinates from config.mk. And finally, lines #40 to #42 will source read_domain_instances.tcl, a script that assigns the corresponding instances to the TEMP_ANALOG domain group. It gets the wanted instances from the DOMAIN_INSTS_LIST variable, set to tempsenseInst_domain_insts.txt in config.mk. This will ensure the cells are placed in the correct voltage domain during the detailed placement phase.The tempsenseInst_domain_insts.txt file contains all instances to be placed in the TEMP_ANALOG domain (VIN voltage tracks). These cells are the components of the ring oscillator, including the inverters whose quantity may vary according to the optimization results. Thus, this file actually gets generated during temp-sense-gen.py.

## Placement 

Placement is the next step which takes place after the floorplan is ready and it has two phases :- Global Placement and Detailed Placement .In this phase , all instances will be placed in their respective voltage domain , ready for routing.

The Global Placement power and area report is shown below:
<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/222965941-9d194701-1ea6-447f-b1f2-a3808e3eaf31.png">
 <img src="https://user-images.githubusercontent.com/90523478/222966003-cbebfc7e-897f-4922-b366-459fbeff325d.png">
 </p>


The Detailed Placement power and area report is as shown below:

<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/222966063-b5f795b1-cce6-47bc-a5cf-0d7d120e934f.png">
 </p>
 
 <p align="center">
<img src="https://user-images.githubusercontent.com/90523478/222966293-45d3106f-1a45-4124-9439-57e70d16b23a.png">
 </p>

<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/222966370-0081c87b-0b00-48dc-89d5-436ac22a1e68.png">
 </p>

## Routing 

Routing is also divided into two phases : Global Routing and Deatiled Routing . Global_route.tcl is shown below:
<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/222966737-2e8d733e-0e31-4b4b-add2-71433e43e345.png">
 </p>

This above image shows that two other files : add_ndr_rules.tcl , which adds an NDR rule to the VIN net to improve routes that connect both voltage domains and create_custom_connections.tcl , which creates the connection between the VIN net and HEADER instances.

The Global Route power and area report is shwon below:
<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/222967339-4c09be55-e87e-46e5-b62b-aa863963e7b3.png">
<img src="https://user-images.githubusercontent.com/90523478/222967433-7cb50f75-c6ee-45e8-b59f-b183d8b31edd.png">
<img src="https://user-images.githubusercontent.com/90523478/222967604-55e61a05-914c-4cf5-a959-72b41fedcaf7.png">
<img src="https://user-images.githubusercontent.com/90523478/222967683-512cf0b7-d28c-43bf-a2cd-30acc416e00b.png">
<img src=https://user-images.githubusercontent.com/90523478/222967756-fa3e50fe-82e6-40b9-a85a-ac9d7c373a60.png">
</p>
 

Detail_route.tcl is shown below :
                                                                                                               
<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/222966063-b5f795b1-cce6-47bc-a5cf-0d7d120e934f.png">
 </p>

                                                                                                                
                                                                                                                
                                                                                                                
 




