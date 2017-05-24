FROM ubuntu:16.04
MAINTAINER George Stoyanov <gstoyanov@gmail.com>

ENV 		FFMPEG=Latest
CMD		["--help"]
ENTRYPOINT	["ffmpeg"]

WORKDIR /home
RUN apt-get update \
	&& apt-get install git -y \
	&& git clone https://github.com/stoyanovgeorge/docker_ffmpeg.git

WORKDIR /home/docker_ffmpeg/
RUN sh compilation.sh
