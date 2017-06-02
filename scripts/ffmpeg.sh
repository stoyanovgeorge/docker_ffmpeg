#!/bin/bash

#mkdir $HOME/install
cd $HOME/install
git clone https://github.com/FFmpeg/FFmpeg.git
cd $HOME/install/FFmpeg
./configure \
	--target-os=linux \
	--enable-gpl \
	--enable-ladspa \
	--enable-libpulse \
	--enable-libschroedinger \
	--enable-libsoxr \
	--enable-libspeex \
	--enable-avfilter \
	--enable-avresample \
	--enable-postproc \
	--enable-pthreads \
	--enable-libass \
	--enable-libfdk-aac \
	--enable-libfreetype \
	--enable-libmp3lame \
	--enable-libopus \
	--enable-libtheora \
	--enable-libvorbis \
	--enable-libvpx \
	--enable-libx264 \
	--enable-libx265 \
	--enable-nonfree \
	--enable-libkvazaar \
	--disable-ffplay \
	--enable-libopenjpeg \
	--enable-libwebp \
	--enable-libxvid \
	--enable-libvidstab \
	--enable-libopenh264 \
	--enable-zlib \
	--enable-openssl \
	--enable-fontconfig \
	--enable-librtmp \
	--enable-version3
make
make install
make distclean
