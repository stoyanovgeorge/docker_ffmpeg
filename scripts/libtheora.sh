#!/bin/bash

#mkdir $HOME/install
cd $HOME/install
git clone https://github.com/Distrotech/libtheora.git
cd $HOME/install/libtheora
./autogen.sh --enable-static
make
make install
make distclean
