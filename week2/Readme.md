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
