#!/bin/bash

echo "Start the system update..."
apt-get update
apt-get install apt-utils -y
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get install \
	autoconf \
	automake \
	build-essential \
	cmake \
	libopenjpeg5 \
	fonts-dejavu-core \
	fontconfig-config \
	i965-va-driver \
	libtool \
	pkg-config \
	texinfo \
	yasm \
	libass-dev \
	mesa-vdpau-drivers \
	checkinstall \
	zlib1g-dev \
	libxvidcore-dev \
	libfontconfig1 \
	libsdl2-dev \
	libopenjpeg-dev \
	ladspa-sdk libsoxr-dev \
	libschroedinger-dev \
	libspeex-dev \
	python-dev \
	python-pip \
	python-tk \
	libssl-dev -y
apt-get clean -y
apt-get autoremove -y
echo "End of the system update"
