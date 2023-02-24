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

Zoom in view of Fn diagram in xschem:-
<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/221252001-75167655-d103-4a48-89b7-5740131b7f2d.png">
</p> 
<p align="center">
Fig  Zoom-in view of Function circuit in xschem 
</p>

Now, for running the simulation of Fn function just go to topmost right side corner and click on “Netlist”
Nothing opens up after that click on "Simulate" .
After , clicking on simulate the ngspice window opens and wait for some seconds like 2-5-6 secs then , it simulated and shows/displays like this as shown in the image below:-

<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/221252304-635f5652-516d-4b24-a71e-9c0c966ab3f6.png">
</p> 
<p align="center">
Fig  ngspice window view after simulate the Fn circuit in xschem
</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/221252701-74661028-abe8-425c-9ca0-00180b25d2e8.png">
</p> 
<p align="center">
Fig  ngspice window view after simulate the Fn circuit in xschem
</p>

Now, for observing the waveform of A,B,C,D,E,F(i.e., Input waveform) and Y(output waveform)
Write these commands in ngspice window which opens up :
 plot V(A)+6 V(B)+12 V(C)+18 V(D)+24 V(E)+30 V(F)+36               For observing the input waveform
 plot v(Y)                                                         For observing the output waveform
 
 <p align="center">
<img src="https://user-images.githubusercontent.com/90523478/221253568-e01d6d0a-acb8-47d3-a677-40ab5a8d1220.png
">
</p> 
<p align="center">
Fig  ngspice window view for executing plot commmand for displaying waveform
</p>


Input Waveform

 <p align="center">
<img src="https://user-images.githubusercontent.com/90523478/221254276-44e7a7c3-caa1-4044-accb-78fcaec42bfb.png">
</p> 
<p align="center">
Fig  Input waveform of the Fn circuit
</p>


Output Waveform

 <p align="center">
<img src="https://user-images.githubusercontent.com/90523478/221254386-59642d43-4ea9-492d-9788-327bee60a603.png">
</p> 
<p align="center">
Fig  Output waveform of the Fn circuit 
</p>

Combine Input-Output waveform of Function Fn

 <p align="center">
<img src="https://user-images.githubusercontent.com/90523478/221254548-b4525fe5-72f3-481b-a826-2396a8a06ec7.png">
</p> 
<p align="center">
Fig  Combine Input-Output waveform of Fn circuit  
</p>


### 3.b. Post-layout Characterization using Magic/Ngspice

For performing the post layout characterization of Function Fn first we need to extract the generated spice file(Spice File which is generated from xschem simulation of Fn circuit) into the magic tool.

For open the spice file in magic , follow the steps which are given below:

1)Open up the mag folder which we have created in week 0
2)open magic
3)Go to File--->Import spice
4)/home/vanshikatanwar/.xschem/simulations
5)Func.spice
6)Click on okay
7)Go to windows in magic and click on Full view
8)Your Function Fn layout displaces in magic

Image is shown below:-

 <p align="center">
<img src="https://user-images.githubusercontent.com/90523478/221257832-e13faff1-b790-4730-95fe-4cdcbec5fa51.png">
</p> 
<p align="center">
Fig  Layout view of Function Fn in magic tool 
</p>

