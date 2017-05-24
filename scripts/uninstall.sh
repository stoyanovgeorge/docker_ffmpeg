#!/bin/bash

echo "Uninstall of some unused packages"

rm -rf /var/lib/apt/lists/*
apt-get purge -y \
	autoconf \
	automake \
	build-essential \
	git \
	pkg-config \
	yasm \
	mesa-vdpau-drivers \
	checkinstall \
	cmake \
	python-dev \
	python-pip \
	python-tk \
	apt-utils
apt-get clean -y
apt-get autoremove -y
