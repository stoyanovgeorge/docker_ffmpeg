FROM ubuntu:latest
MAINTAINER George Stoyanov <gstoyanov@gmail.com>

WORKDIR /home
RUN sudo apt-get update 
RUN sudo apt-get install git -y
RUN git clone https://github.com/stoyanovgeorge/ffmpeg.git 
WORKDIR /home/ffmpeg/
RUN sh compilation.sh
