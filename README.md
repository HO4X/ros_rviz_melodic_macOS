# Build ROS from Source under macOS Mojave
## prepare 
run ./install.sh 

## patch cmake files 
### remove boost signals
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
transport_udp.cpp:68:18: error: expected '('
libros/service.cpp:92:34: error: expected ';' at end of declaration
class_loader.hpp:85:59: error: a space is required between consecutive right angle brackets (use '> >')

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
