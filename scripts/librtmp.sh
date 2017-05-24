#/bin/bash

#mkdir $HOME/install
cd $HOME/install
git clone git://git.ffmpeg.org/rtmpdump 
cd $HOME/install/rtmpdump
./configure --enable-static
make SYS=posix
checkinstall \
	--pkgname=rtmpdump \
	--pkgversion="2:$(date +%Y%m%d%H%M)-git" \
	--backup=no \
	--deldoc=yes \
	--fstrans=no \
	--default
ldconfig
