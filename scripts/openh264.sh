#/bin/bash

#mkdir $HOME/install
cd $HOME/install
git clone https://github.com/cisco/openh264.git 
cd $HOME/install/openh264
make 
make install
make clean
ldconfig
