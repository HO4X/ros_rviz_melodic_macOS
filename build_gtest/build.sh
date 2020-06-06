git clone https://github.com/google/googletest.git
cd googletest
mkdir build
cd build
cmake -DCMAKE_CXX_COMPILER="c++" -DCMAKE_CXX_FLAGS="-std=c++11 -stdlib=libc++" ../
make
sudo make install