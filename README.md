# msvsd3bitfadc

# Week 0 AIs

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

