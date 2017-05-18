#!/bin/bash

#mkdir $HOME/install
cd $HOME/install
git clone https://github.com/webmproject/libvpx.git 
cd $HOME/install/libvpx
./configure --enable-static
make
make install
make distclean
