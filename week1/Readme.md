# Week 1 work list 

| S. No.    | Action Item|Status| 
|----------|----------|-----------------------|
|1.|[Install ALIGN tool |✅|
|2.|[Inverter post-layout simulation using ALIGN]||
|3.|[Compare post layout simulation of ALIGN and magic ]||
|5.|[Function pre-layout simulation using xschem/ngspice and SKY130 PDK]|✅|
|6.|[Function post-layout simulation using Magic/ngspice and SKY130 PDK]||
|7.|[Function post-layout simulation using ALIGN]| |.
|8.|[Compare post-layout simulation using ALIGN and using MAGIC with sky130]| |.



## 1. ALIGN installation
ALIGN is an open source automatic layout generator for analog circuits. Install ALIGN and all its dependencies using the following commands.
```
# Home directory
    $cd ~/VSD_8TSRAM
# Clone the ALIGN source
    $git clone https://github.com/ALIGN-analoglayout/ALIGN-public
    $cd ALIGN-public
# Install virtual environment for python
    $sudo apt -y install python3.8-venv
# Install the latest pip
    $sudo apt-get -y install python3-pip
# Create python virtual envronment and install dependencies
    $python3 -m venv general
    $source general/bin/activate
    $python3 -m pip install pip --upgrade
    $pip install align
    $pip install pandas
    $pip install scipy
    $pip install nltk
    $pip install gensim
    $pip install setuptools wheel pybind11 scikit-build cmake ninja
# Install ALIGN as a user
    $pip install -v .
# Install ALIGN  as a developer
    $pip install -e .
    $pip install -v -e .[test] --no-build-isolation
    $pip install wheel setuptools pip --upgrade
    $pip3 install wheel setuptools pip --upgrade
    $pip install -v --no-build-isolation -e . --no-deps --install-option='-DBUILD_TESTING=ON'
    
# Making ALIGN Portable to Sky130 tehnology
# Clone the following Repository inside ALIGN-public directory
    $git clone https://github.com/ALIGN-analoglayout/ALIGN-pdk-sky130

# Move SKY130_PDK folder to ~/VSD_8TSRAM/ALIGN-public/pdks. 
#Everytime we start the tool in new terminal, run the following commands.

# Running ALIGN TOOL
    $python -m venv general
    $source general/bin/activate
    $python3 -m pip install pip --upgrade
    $mkdir work
    $cd work
# General syntax to give inputs

    $schematic2layout.py <NETLIST_DIR> -p <PDK_DIR> -c
EXAMPLE 1:
    $schematic2layout.py ../ALIGN-pdk-sky130/examples/five_transistor_ota -p ../pdks/SKY130_PDK/
    
```
## 3. Simulation of Function 
### 3.a. Pre-layout Characterization using Xschem/Ngspice

Schematic of given function ‘Y’ using Xschem tool.
For performing the week 1 work open the week 1 directory means open the xschem using sky130A technology Write these commands inside that xschem folder which we have crated in week 0:-
```
cd xschem_labs
xschem
```
Now, the xschem become opens and the next step is that we need to implement the given function in xschem as shown in the figure below:-

<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/221251594-48522d24-1391-4799-a040-2f7e3bb89e5a.png">
</p> 
<p align="center">
Fig  Function circuit in xschem 
</p>


