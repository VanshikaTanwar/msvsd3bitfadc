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





