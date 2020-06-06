wget https://github.com/opencv/opencv/archive/3.2.0.zip

# install SIP first
tar xzf 3.2.0.zip
cd opencv-3.2.0
mkdir build
cd build
cmake -DPYTHON_DEFAULT_EXECUTABLE=python3 -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local -DBUILD_opencv_python2=False -DBUILD_opencv_python3=True -DPYTHON3_EXECUTABLE=python3 ..
make -j8
sudo make install
echo /usr/local/lib/python3.7/site-packages >> /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/opencv3.pth



