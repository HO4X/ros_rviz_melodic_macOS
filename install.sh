brew update
brew update
brew install poco 
brew install gpgme

brew tap ros/deps
brew tap osrf/simulation 
brew tap homebrew/core

sudo mkdir -p ~/Library/Python/2.7/lib/python/site-packages
echo "$(brew --prefix)/lib/python2.7/site-packages" >> ~/Library/Python/2.7/lib/python/site-packages/homebrew.pth

sudo -H pip2 install -U defusedxml empy pycryptodome
sudo -H pip2 install -U wxPython
sudo -H pip2 install -U wstool rosdep rosinstall rosinstall_generator rospkg catkin-pkg

sudo -H rosdep init
rosdep update

mkdir ~/ros_catkin_ws && cd ~/ros_catkin_ws

rosinstall_generator desktop_full --rosdistro melodic --deps --tar > melodic-desktop-full.rosinstall
wstool init -j8 src melodic-desktop-full.rosinstall

