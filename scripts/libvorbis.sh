#!/bin/bash

#mkdir $HOME/install
cd $HOME/install
git clone https://github.com/gypified/libvorbis.git
cd $HOME/install/libvorbis
./autogen.sh
make
make install
make distclean
