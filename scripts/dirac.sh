#/bin/bash

#mkdir $HOME/install
cd $HOME/install
git clone https://github.com/DIRACGrid/DIRAC.git
cd $HOME/install/DIRAC
./configure --enable-static
make
make install
make distclean
ldconfig
