FROM ubuntu:16.04
MAINTAINER George Stoyanov <gstoyanov@gmail.com>

WORKDIR /home
RUN apt-get update 
RUN apt-get install git -y
RUN git clone https://github.com/stoyanovgeorge/docker_ffmpeg.git 
WORKDIR /home/docker_ffmpeg/
RUN sh compilation.sh

ENTRYPOINT ["ffmpeg"]
