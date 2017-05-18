#!/bin/bash

echo "Uninstall of some unused packages"

apt-get remove \
autoconf automake build-essential git pkg-config nasm yasm mesa-vdpau-drivers checkinstall \
zlib1g-dev cmake python-dev python-pip python-tk apt-utils -y
apt-get clean -y
apt-get autoremove -y
