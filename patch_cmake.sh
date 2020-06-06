# patch src/ros_comm/rosbag/CMakeLists.txt
sed -i.bak '/\project(rosbag)/a\ 
# Default to C++14 \
if(NOT CMAKE_CXX_STANDARD) \
  set(CMAKE_CXX_STANDARD 14) \
endif() \
if(APPLE) \
  # Workaround to find missing libraries \
  include_directories("/usr/local/opt/openssl/include") \
  link_directories("/usr/local/opt/openssl/lib") \
  link_directories("/usr/local/lib")  # GPGME library \
endif()' ./src/ros_comm/rosbag/CMakeLists.txt

# patch src/ros_comm/rosbag_storage/CMakeLists.txt
sed -i.bak '/\project(rosbag_storage)/a\ 
# Default to C++14 \
if(NOT CMAKE_CXX_STANDARD) \
  set(CMAKE_CXX_STANDARD 14) \
endif() \
if(APPLE) \
  # Workaround to find missing libraries \
  include_directories("/usr/local/opt/openssl/include") \
  link_directories("/usr/local/opt/openssl/lib") \
  link_directories("/usr/local/lib")  # GPGME library \
endif()' ./src/ros_comm/rosbag_storage/CMakeLists.txt

# patch src/ros_comm/message_filters/CMakeLists.txt 
sed -i.bak '/find_package(Boost REQUIRED COMPONENTS signals thread)/ c\
find_package(Boost REQUIRED COMPONENTS thread)' ./src/ros_comm/message_filters/CMakeLists.txt 

# patch src/ros_comm/roscpp/CMakeLists.txt
sed -i.bak '/find_package(Boost REQUIRED COMPONENTS chrono filesystem signals system)/ c\
find_package(Boost REQUIRED COMPONENTS chrono filesystem system)' ./src/ros_comm/roscpp/CMakeLists.txt