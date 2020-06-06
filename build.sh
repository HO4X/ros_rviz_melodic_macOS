# fix python path
#export PYTHONPATH=$PYTHONPATH:/usr/local/Cellar/
export PATH="/usr/local/opt/qt/bin:$PATH"
export WS_PATH=$(pwd)

echo "Current WS $WS_PATH"

rosdep install --from-paths src --ignore-src --rosdistro melodic -y --skip-keys google-mock
sudo ./src/catkin/bin/catkin_make_isolated --install -DCMAKE_FIND_FRAMEWORK=LAST -DCMAKE_CXX_FLAGS="-std=c++0x" -DCATKIN_ENABLE_TESTING=0 -DCMAKE_BUILD_TYPE=Release 
> -DCMAKE_MACOSX_RPATH=ON 
> -DCMAKE_PREFIX_PATH=/usr/local/Cellar/qt/5.14.2/;$WS_PATH/install_isolated/share/;/usr/local/lib/cmake/;
> -Dboost_python3_DIR=/usr/local/Cellar/boost-python3/1.72.0_1/lib/cmake/boost_python-1.72.0/


source ~/ros_catkin_ws/install_isolated/setup.bash
