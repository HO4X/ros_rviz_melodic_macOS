export PATH="/usr/local/opt/qt/bin:$PATH"

wget https://www.riverbankcomputing.com/static/Downloads/sip/4.19.22/sip-4.19.22.tar.gz
wget https://www.riverbankcomputing.com/static/Downloads/PyQt5/5.13.1/PyQt5_gpl-5.13.1.tar.gz

# install SIP first
tar xzf sip-4.19.22.tar.gz
cd sip-4.19.22
python ./configure.py
make
make install
cd ..

# install pyqt
tar xzf PyQt5_gpl-5.13.1.tar.gz
cd PyQt5_gpl-5.13.1
python ./configure.py --sip /Library/Frameworks/Python.framework/Versions/3.6/bin/sip  # <-- This has to point to your sip install location
make -j8
make install
