#!/bin/bash

PWD=`pwd`

# Creating of install directory where we will download all the source packages
mkdir $HOME/install

# Start executing the scripts

echo "System Update is started..."
sh $PWD/scripts/update_system.sh
echo "Update of the system had finished"
echo "Start Compilation of the libs needed for ffmpeg..."
sh $PWD/scripts/nasm.sh
sh $PWD/scripts/kvazaar.sh
sh $PWD/scripts/libfdk-aac.sh
sh $PWD/scripts/ogg.sh
sh $PWD/scripts/libvorbis.sh
sh $PWD/scripts/libopenjpeg.sh 
sh $PWD/scripts/libmp3lame.sh
sh $PWD/scripts/libopus.sh
sh $PWD/scripts/libtheora.sh
sh $PWD/scripts/libwebp.sh
sh $PWD/scripts/libvpx.sh
sh $PWD/scripts/libx264.sh
sh $PWD/scripts/libx265.sh
sh $PWD/scripts/vidstab.sh
sh $PWD/scripts/openh264.sh
echo "All required libs had been installed"
echo "Start compilation of ffmpeg"
sh $PWD/scripts/ffmpeg.sh
echo "FFMPEG compilation has finished"
#sh $PWD/scripts/uninstall.sh
rm -rf $HOME/install
