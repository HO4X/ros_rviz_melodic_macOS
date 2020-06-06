# Build ROS melodic from source under macOS Mojave (10.14)
Building ROS on macOS is quite challanging. I made this repo for documantation purposes, please dont expect that evrything runs OOTB! Feel free to improve or fork this. For me the main reason i wanted to build ROS under macOS was RViz, so far i only tested RViz and the roscore component. The scripts are also pretty hacky, so dont expect to much from it. 

### References
Main reference was the official guide from: http://wiki.ros.org/melodic/Installation/macOS/Homebrew/Source
you might read this first to get an overview. 

## prepare 
run ./install.sh 

## patch cmake files 
### remove boost signals from cmake files
like in the official guide. 

### fix find boost required python3 to python 
replace in the cmake files 
```
find_package(boost REQIUIRED python3 )
```
to 
```
find_package(boost REQIUIRED python )
```

## install brew dependencies
```
brew install qt
brew install log4cxx
brew install urdfdom
brew install boost-python3
brew install yaml-cpp
brew install pcl
brew install gtk+
brew install pkg-config

brew tap osrf/simulation

brew install gazebo11
```

## build sip and pyqt from source
```
cd build_qt
./build.sh
cd ..
```

## build opencv from source 
```
cd build_opencv_32
./build.sh
cd .. 
```

## fix cpp syntax 
You might encounter some of this errors while compiling, so you need to fix them manually. 
```
transport_udp.cpp:68:18: error: expected '('
libros/service.cpp:92:34: error: expected ';' at end of declaration
class_loader.hpp:85:59: error: a space is required between consecutive right angle brackets (use '> >')
```

## Build ROS
```
./build.sh
```

## fix .sip not found 
```
pip install PyQt5-sip
```

## After build 
### fix missing dependencies for roscore 
```
pip install defusedxml netifaces
```
