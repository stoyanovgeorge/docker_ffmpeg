#!/bin/bash

#mkdir $HOME/install
cd $HOME/install
git clone https://github.com/uclouvain/openjpeg.git
cd $HOME/install/openjpeg
mkdir build
cd $HOME/install/openjpeg/build
cmake ..
make
make install
ldconfig
make clean
