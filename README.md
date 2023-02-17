# msvsd3bitfadc

# Week 0 AIs

With a windows, Oracle virtual box (Version 6.0.10 platform) is installed with version of Ubuntu 20.04.1 LTS, 64 bit OS with 5 GB RAM, and 1.05 TB of hard-disk space.  

<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/219728285-c2195b33-974c-41aa-a542-26fbc61f0824.jpeg">
</p> 
<p align="center">
Fig  Oracle VM Virtual Box 6.0.10 platform
</p>

1. Virtual Box can be installed from: https://www.virtualbox.org/wiki/Download_Old_Builds_6_0
2. Note: Click on Windows hosts for Windows.  

<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/219728037-07064388-2713-468d-871d-a0a08bba5557.jpeg">
</p> 
<p align="center">
Fig  Ubuntu 22.04.1 window running using Oracle VM VirtualBox
</p>


1. Latest version of Ubuntu can be installed from: https://ubuntu.com/download/desktop
2. Download the latest LTS version of Ubuntu (22.04.1)

# Tools Installation

![open_pdk](https://user-images.githubusercontent.com/90523478/219727055-46f59d02-1586-4349-b834-c401b53bd0e2.png)

- magic
- ngspice
- xschem
- netgen
- open_pdk



## magic TOOL Installation

It is an open-source VLSI layout tool.<br /><br />
Install steps:
```
$  git clone git://opencircuitdesign.com/magic
$  cd magic
$	 ./configure
$  make
$  sudo make install
```
More information [http://opencircuitdesign.com/magic/index.html](http://opencircuitdesign.com/magic/index.html)


## Netgen
It is a tool for comparing netlists, a process known as LVS, which stands for "Layout vs. Schematic" <br /><br />
Install steps:
```
$  git clone git://opencircuitdesign.com/netgen
$  cd netgen
$	./configure
$  make
$  sudo make install
```
More information [http://opencircuitdesign.com/netgen/index.html](http://opencircuitdesign.com/netgen/index.html)

## Xschem
Xschem is a schematic capture program <br /><br />
Install xchem where you have installed all the tools 
```
$             git clone https://github.com/StefanSchippers/xschem.git xschem_git   
$             cd xschem_git
$              ./configure
```
![image](https://user-images.githubusercontent.com/90523478/219732133-981dd524-2992-46c4-bb71-1fb421493fea.png)

![image](https://user-images.githubusercontent.com/90523478/219732356-66ae0182-80b8-4c38-9c0b-c247240bc389.png)

![image](https://user-images.githubusercontent.com/90523478/219732553-8fcfe182-cc8e-49fb-b809-7499ac3c60db.png)


(If the above configure command is giving error like xpm not found “Aborted (core dumped)  it means that this library is missing then run this command which is given below :-)

```
$	sudo apt install libxpm-dev
```
Now , run ./configure command 

![image](https://user-images.githubusercontent.com/90523478/219733178-fa4d27dd-5c81-4f7d-9d2c-49e7d21d9482.png)

![image](https://user-images.githubusercontent.com/90523478/219733392-98846413-493e-42b3-a976-6f3820c1f3ce.png)


```
$  make         {# if tgis is also giving some error then run this command instead of this make -j$(nproc) }

$  sudo make install
```
![image](https://user-images.githubusercontent.com/90523478/219733997-9514f268-6fa6-413e-94fe-8851b49ef2a8.png)

![image](https://user-images.githubusercontent.com/90523478/219734107-d0bc3393-4e6c-4f44-b167-ff59219c2852.png)

```
$  sudo make install
```

![image](https://user-images.githubusercontent.com/90523478/219734535-a0b02837-d701-44b2-9069-126f9dbec8e6.png)

![image](https://user-images.githubusercontent.com/90523478/219734672-dc151104-55b6-4e92-8e8b-2eef18d5c984.png)

For opening or checking that xschem is installed or not , write this command under xschem_git directory

```
$  xschem

This command opens up the xschem on your screen

for closing it write this 
      exit

```

![image](https://user-images.githubusercontent.com/90523478/219735670-bf12cb03-163c-4023-bde3-8a033901a9bd.png)


More information [http://repo.hu/projects/xschem/index.html](http://repo.hu/projects/xschem/index.html)



## open_pdk

Open_PDKs is distributed with files that support the Google/SkyWater sky130 open process description [https://github.com/google/skywater-pdk](https://github.com/google/skywater-pdk). Open_PDKs will set up an environment for using the SkyWater sky130 process with open-source EDA tools and tool flows such as magic, qflow, openlane, netgen, klayout, etc.<br /><br />

Install the Open_PDKS
```
$  git clone git://opencircuitdesign.com/open_pdks
$  open_pdks
$	./configure --enable-sky130-pdk
$  make
$  sudo make install
```


![1 1](https://user-images.githubusercontent.com/88899069/218765374-34f77769-6c97-4bf0-aee4-7b2e59444931.png)

![2](https://user-images.githubusercontent.com/88899069/218765439-510c504e-272f-41e6-aa43-05533be6dc3f.png)

![3](https://user-images.githubusercontent.com/88899069/218765460-ba93bf45-09b0-4c5b-a342-cefae7746734.png)

![4](https://user-images.githubusercontent.com/88899069/218765480-92eaa937-2ed4-492b-ad5b-2c196ec167b0.png)

![5](https://user-images.githubusercontent.com/88899069/218765494-57bd04eb-c1a2-42e0-b0b4-c16ebca70044.png)


After the open_pdks is installed , verifying this installation and to do interface this with sky130 just follow the given steps mentioned below:-

1)	Create a folder with any name inside xschem . In my case , I have created a folder with the name xschem_simulations.

2)	Now, go to open_pdks/sky130/sky130A/libs.tech/xschem.

3)	Copy xschemrc file from this location 

4)	Go back to that folder which you have created in {step 1} and paste that xschemrc file inside the xschem_simulations .

5)	Now, open terminal in this xschem_simulations folder and type this command “xschem”

6)	You will notice that a display  has come in which xschem is now launched with all the sky130 processes , now you can proceed and start making your project .


## Ngspice
ngspice is the open-source spice simulator for electric and electronic circuits.<br /><br />
Install steps:<br />

After downloading the tarball from [https://sourceforge.net/projects/ngspice/files/](https://sourceforge.net/projects/ngspice/files/) to a local directory, unpack it using:
```
 $ tar -zxvf ngspice-37.tar.gz
 $ cd ngspice-37
 $ mkdir release
 $ cd release
 $ ../configure  --with-x --with-readline=yes --disable-debug
 ```

(If the above configuration command fails with an error such as "xpm not found" or "Aborted (core dumped)", this indicates that the library is missing. If so, perform the command below:-

```
$	sudo apt-get install libxaw7-dev
```
 
 Now again run command configure
 
 ```
 $ ../configure  --with-x --with-readline=yes --disable-debug
 $ make
 $ sudo make install
```
More information [https://ngspice.sourceforge.io/index.html](https://ngspice.sourceforge.io/index.html)

Please note that to view the simulation graphs of ngspice, xterm is required and can be installed using.
```
$ sudo apt-get update
$ sudo apt-get install xterm
```


Now that we have all the necessary tools installed let's understand the design flow!


#  Pre-layout simulation of CMOS inverter using xschem and ngspice

![image](https://user-images.githubusercontent.com/90523478/219739258-f316567c-ce4a-4535-8508-e3fdb716ab26.png)

![image](https://user-images.githubusercontent.com/90523478/219739432-c9e11c1b-4490-4e6a-bfa0-93a0a5673074.png)

![image](https://user-images.githubusercontent.com/90523478/219739696-3c5cc9a7-1bc2-4efb-a042-316e7d5ab3f1.png)

Now, after the complete creation of inverter using CMOS , we need to simulate the circuit. For, that we need to add the code_shown.sym in which we insert the library path of sky130 tech node and also , specify which analysis one wants to do with proper time for simulation given. 

As, for this inverter circuit I need to do its DC analysis , so, for performing DC analysis .dc command is used with proper time values given . The format of the analysis is such that:-

.dc start_time stop_time step_time

.dc 0 1.8 0.01

Now, we also need to insert the library path of sky130 technology of sky130.lib.spice tt file inside this SPICE File of code_shown.sym

The respective path is given below:-

/home/vanshikatanwar/Desktop/vsdflow/work/tools/openlane_working_dir/OpenLane/pdks/volare/sky130/versions/9f1c2b06d2b5a6708cfe0b55679c7e84d37220cc/sky130A/libs.tech/ngspice/sky130.lib.spice tt 



## ALIGN TOOL Installation 

There are some prerequisites needed before installing the ALIGN Tool 

```
1. gcc >=6.1.0(For C++14 support)

2. Python>=3.7
```



Note:- In my UBUNTU 22.04 , 

gcc-9 version is Installed

and python3 3.10 version is installed

**If gcc or python is not installed then install it using the command which are given below:-

```
sudo apt-get install gcc-9
```


 check gcc –version

```
sudo apt-get install python3
```

check python3 –version

NOTE:- It is must to met the prerequisite before installing the tool

For installing the align tool , Just follow these steps which are given below:-

Go to Desktop or that directory/path where you want to install the ALIGN Tool and write these commands which is given below:- 


```
$           export CC=/usr/bin/gcc

$           export CXX=/usr/bin/g++

$            git clone https://github.com/ALIGN-analoglayout/ALIGN-public

$           cd ALIGN-public
```


#### Now we need to create a Python virtual environment

As , we have installed the Python 3 so, follow these commands which are given below inside the ALIGN-public directory:

```
$          python3 -m venv general

$          source general/bin/activate

$          python3 -m pip install pip --upgrade
```

Note :- If you have only python version then , write python command instead of python3 in above commands 


</p>
<p align="center">
  <img src="https://user-images.githubusercontent.com/90523478/218179138-8388f0c8-128a-4c60-bdd5-a12925919968.png"></br>
   fig.1
</p>

Now, there are 2 process that one can install ALIGN as a USER or as a DEVELOPER

** For installing ALIGN as a USER 

```
$          pip install -v .
```

Note:- If after running this command it’s showing some error like gcc is not there or wheel not found 
“Building wheel for align (pyproject.toml) did not run successfully”
Could not build wheels for align , which is required to install pyproject.toml-based projects “

run this command inside ALIGN-public 

```
$             python3 -m pip install wheel setuptools pip –upgrade
```


or for solving that gcc error if it’s coming like gcc already satisfied gcc not found when typing gcc –version then , for that we need to change the softlink from /usr/bin 

or create a new softlink or symbolic link 

before that run these commands and then try again to install 

```
$             sudo apt update
$             sudo apt install build-essential
$             sudo apt-get install manpages-dev 
```

Now , if still error persist then, create softlink now 

```
$             cd
$             cd /usr/bin/
$             ls
 see gcc is there or not 
if there are more than one gcc are there then run this command 
$             sudo rm /usr/bin/gcc
```



![2](https://user-images.githubusercontent.com/90523478/218179329-d9b67fea-df29-4b34-9477-d427d31a54e6.png)

![3](https://user-images.githubusercontent.com/90523478/218179438-ecd73ff2-0ed3-41f5-99a7-67039d7efdc6.png)

Now again run this 

```
$             ls
$             sudo ln -s /usr/bin/gcc-9 /usr/bin/gcc
$             gcc –version
```

It will show now the version of gcc like this as shown below:-

![4](https://user-images.githubusercontent.com/90523478/218179466-caa605f5-3bdf-4be7-95d5-27489e18ed2c.png)

Now, run that command of installing ALIGN as a user .
it will successfully run now .

### If you are installing ALIGN as a DEVELOPER:-


```
$             pip install -e .
```


![5](https://user-images.githubusercontent.com/90523478/218179504-27f487cd-eea4-4092-9815-d70d1f8e74f9.png)

Now, after this installation of either ALIGN as a user or ALIGN as a DEVELOPER then, run these commands :-   

```
$             pip install setuptools wheel pybind11 scikit-build cmake ninja
$             pip install -v -e .[test] --no-build-isolation
$             pip install -v --no-build-isolation -e . –no-deps –install-option=’-DBUILD_TESTING=ON’

```



![6](https://user-images.githubusercontent.com/90523478/218179529-6b1f6e14-ea14-4b7e-aff6-c5973c7725fa.png)

![7](https://user-images.githubusercontent.com/90523478/218179561-641c0ddc-4afe-4f99-a1a8-b04f0989e75c.png)

![8](https://user-images.githubusercontent.com/90523478/218182373-fbcb43f9-7b2a-4766-98cf-a6dfd932d511.png)

![9](https://user-images.githubusercontent.com/90523478/218182395-a3ffd729-874b-4c25-a8c5-1dfba0f37465.png)


![10](https://user-images.githubusercontent.com/90523478/218182435-f4ba5d6c-62c4-4dcb-afb0-916e570759e3.png)

![11](https://user-images.githubusercontent.com/90523478/218182465-e9a9a773-38eb-409e-8c93-b41a41e5f281.png)

![12](https://user-images.githubusercontent.com/90523478/218182483-7736934b-c7d7-43bb-8605-bfa73092f77c.png)

Making ALIGN Portable to SKY130 technology 

clone the following Repository inside ALIGN-public directory

```
git clone https://github.com/ALIGN-analoglayout/ALIGN-pdk-sky130

```


move SKY130_PDK folder to the following location

/Users/vanshikatanwar/ALIGN-public/pdks 


```
$ Installing Xschem

```


Install xchem where you have installed all the tools 

```
$             git clone https://github.com/StefanSchippers/xschem.git xschem_git   
$             cd xschem_git
$              ./configure

```
![13](https://user-images.githubusercontent.com/90523478/218183068-0adf026f-7248-4890-b81c-e5a3d3ec86c9.png)

![14](https://user-images.githubusercontent.com/90523478/218183138-512da01f-0fe4-42d1-97b3-b17b71822871.png)



![15](https://user-images.githubusercontent.com/90523478/218183165-4ed28ea9-c4ba-471f-ad32-4d0ac6004c83.png)


![16](https://user-images.githubusercontent.com/90523478/218183204-7b5b650e-233f-404d-80d5-154a9d16bc9d.png)


(If the above configure command is giving error like xpm not found “Aborted (core dumped)  it means that this library is missing then run this command which is given below :-)


```
$              sudo apt install libxpm-dev 

```  
Now , run ./configure command 

![17](https://user-images.githubusercontent.com/90523478/218183499-80c7da04-5d4f-4a38-842d-7dad2f0c95fc.png)


![18](https://user-images.githubusercontent.com/90523478/218183521-ed53194b-e520-487e-8ff2-55dc70e904af.png)

```
$              make

```                      

{# if tgis is also giving some error then run this command instead of this make -j$(nproc) }

![19](https://user-images.githubusercontent.com/90523478/218183757-c7a3333f-df76-4929-ae1c-09952f783729.png)

![20](https://user-images.githubusercontent.com/90523478/218183779-9c0a643a-9fcb-4e4a-97f5-46ba0818fd1b.png)

```
$              sudo make install

```   

![21](https://user-images.githubusercontent.com/90523478/218183988-bc8e7907-23a5-4868-8928-6ec84f0298cb.png)

![22](https://user-images.githubusercontent.com/90523478/218184001-3eb15c37-f801-4268-9262-723cf050ff96.png)

```
For opening or checking that xschem is installed or not , write this command under xschem_git directory

$                    xschem

This command opens up the xschem on your screen

for closing it write this 

exit

``` 

![23](https://user-images.githubusercontent.com/90523478/218184344-5d2f4df4-6e44-4de2-b4f4-7249b10b6605.png)


#Now install the Open_PDKS 

```
$                    git clone git://opencircuitdesign.com/open_pdks
$                    open_pdks
$                    ./configure --enable-sky130-pdk
$                    make
$                    sudo make install

``` 

After the open_pdks is installed , verifying this installation and to do interface this with sky130 just follow the given steps mentioned below:-
    1) Create a folder with any name inside xschem . In my case , I have created a folder with the name xschem_simulations.
    
    2) Now, go to open_pdks/sky130/sky130A/libs.tech/xschem.
    
    3) Copy xschemrc file from this location 
    
    4) Go back to that folder which you have created in {step 1} and paste that xschemrc file inside the xschem_simulations .
    
    5) Now, open terminal in this xschem_simulations folder and type this command “xschem”
    
    6) You will notice that a display  has come in which xschem is now launched with all the sky130 processes , now you can proceed and start making your project.
    
    ![24](https://user-images.githubusercontent.com/90523478/218184601-6e911eb9-121b-41f3-9bd1-bbecac2fbf34.png)
    
![25](https://user-images.githubusercontent.com/90523478/218184667-e16d790c-6569-4aaa-ae5e-3569ac08102c.png)

![26](https://user-images.githubusercontent.com/90523478/218184695-0b89e7c1-eec6-4f2c-a194-97f9a32ec534.png)
