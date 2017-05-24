#/bin/bash

#mkdir $HOME/install
cd $HOME/install
git clone git://git.ffmpeg.org/rtmpdump 
cd $HOME/install/rtmpdump
./configure --enable-static
make SYS=posix
