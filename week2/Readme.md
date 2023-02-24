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
