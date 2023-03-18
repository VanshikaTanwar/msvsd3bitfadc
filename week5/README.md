## Week 5 Task

OpenFASoC Flow for our design 

For OpenFASoC flow go to openfasoc install directory ~/openfasoc/openfasoc/generators  create a new folder with your design name. As, in my case it is async-gen.

Inside this folder which I have created async-gen there are many files and folders which are required as the input for openFASoC.

The major files and folders are :

--> Blocks
--> Flow
--> models
--> simulations (empty file in starting)
--> src
--> Tools
--? Makefile 
--> JSON File

Go to src directory /openfasoc/openfasoc/generators/async-gen/src
and 
/openfasoc/openfasoc/generators/async-gen/flow/design/sky130hd/async/

And put your Dummy verilog files here in both of these locations.

And also do changes in the python file according to our related design and it's related files which are inside /openfasoc/openfasoc/generators/async-gen/tools

Now, for execution of verilog generation part or for generation of synthesuized verilog code use this command 
```
make sky130hd_async_verilog
```
 <p align="center">
<img src="https://user-images.githubusercontent.com/90523478/226071807-0c428541-fd0a-4c08-bc61-9770dddb8cd0.png">
 </p> 
 
 
 After this step Synthesis is also ran successfully
 
  <p align="center">
 https://user-images.githubusercontent.com/90523478/226071958-a3df2f98-b5bc-474f-9f8d-1ed3dba28ead.png
<img src="">
 </p> 
 

 
 
