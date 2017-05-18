# Automated script for creating Docker images with ffmpeg

Automated scripts for compilation of the latest [FFMPEG](https://ffmpeg.org/ "FFMPEG Official Page") and its most popular librarires and creating a docker image based on the latest Ubuntu release.

```
ffmpeg version N-86098-g3fefaea Copyright (c) 2000-2017 the FFmpeg developers
built with gcc 5.4.0 (Ubuntu 5.4.0-6ubuntu1~16.04.4) 20160609
configuration: --enable-gpl --enable-ladspa --enable-libpulse --enable-libschroedinger --enable-libsoxr --enable-libspeex --enable-avfilter --enable-avresample --enable-postproc --enable-pthreads --enable-libass --enable-libfdk-aac --enable-libfreetype --enable-libmp3lame --enable-libopus --enable-libtheora --enable-libvorbis --enable-libvpx --enable-libx264 --enable-libx265 --enable-nonfree --enable-libkvazaar --disable-ffplay --enable-libopenjpeg --enable-libwebp --enable-libxvid --enable-libvidstab --enable-libopenh264 --enable-zlib --enable-openssl
libavutil      55. 63.100 / 55. 63.100
lbavcodec     57. 96.101 / 57. 96.101
libavformat    57. 72.101 / 57. 72.101
libavdevice    57.  7.100 / 57.  7.100
libavfilter     6. 89.101 /  6. 89.101
libavresample   3.  6.  0 /  3.  6.  0
libswscale      4.  7.101 /  4.  7.101
libswresample   2.  8.100 /  2.  8.100
libpostproc    54.  6.100 / 54.  6.100
``` 

The following libraries are also installed from source: 
1. Video Codecs:
	* [Dirac](http://www.bbc.co.uk/opensource/projects/dirac/ "Dirac Codec") - Dirac is an open and royalty-free video compression format, specification and system developed by BBC Research & Development.
	* [Kvazaar](http://ultravideo.cs.tut.fi/ "Kvazaar Codec") - Kvazaar is an award-winning academic open-source HEVC encoder developed from scratch in C.
	* [OpenH264](http://www.openh264.org/ "OpenH264 Codec") - OpenH264 is a free software library for real-time encoding and decoding video streams in the H.264/MPEG-4 AVC format, developed by Cisco.
	* [OpenJPEG](http://www.openjpeg.org/ "OpenJPEG Codec") - OpenJPEG is an open-source JPEG 2000 codec written in C language. It has been developed in order to promote the use of JPEG 2000, a still-image compression standard.
	* [Theora](https://www.theora.org/ "Theora Codec") - Theora is a free and open lossy video compression format from the Xiph.org Foundation.
	* [x264](http://www.videolan.org/developers/x264.html "x264 Codec") - x264 is a free software library developed by VideoLAN for encoding video streams into the H.264/MPEG-4 AVC format.
	* [x265](http://www.videolan.org/developers/x264.html "x265 Codec") - x265 is a library for encoding video into the High Efficiency Video Coding (HEVC/H.265) video compression format.
	* [Libvpx](https://www.webmproject.org/code/ "Libvpx Codec") - Libvpx is a free software video codec library from Google and the Alliance for Open Media. 
	* [Webp](https://developers.google.com/speed/webp/ "Webp Codec") - WebP is an image format employing both lossy[6] and lossless compression. It is currently developed by Google
	
2. Video Plugins:
	* [vid.stab](http://public.hronopik.de/vid.stab/ "vid.stab Video Plugin") - vid.stab provides a reasonably easy and flexible way to stabilize (deshake) even strongly jiggled video clips.

3. Audio Codecs:
	* [FDK-AAC](https://www.iis.fraunhofer.de/en/ff/amm/impl.html "FDK-AAC Codec") - Fraunhofer's FDK AAC code provides a complete, high-quality audio compression.
	* [Lame MP3](http://lame.sourceforge.net/ "Lame MP3 Codec") - LAME is a high quality MPEG Audio Layer III (MP3) encoder licensed under the LGPL.
	* [Opus](http://opus-codec.org/downloads/ "Opus Codec") - Opus is a lossy audio coding format developed by the Xiph.Org Foundation and standardized by the Internet Engineering Task Force
	* [Vorbis](http://www.vorbis.com/ "Vorbis Codec") - Vorbis is a free and open-source codec for lossy audio compression headed by the Xiph.Org Foundation.

4. Container Formats:
	* [Ogg](https://www.xiph.org/ogg/ "Ogg Container Format") - Ogg is a free, open container format maintained by the Xiph.Org Foundation.

### Prerequisities

You need to install git and docker. A complete guide how to install docker could be found [here](https://docs.docker.com/engine/installation/ "Docker Installation Instructions"). And [here](https://www.atlassian.com/git/tutorials/install-git "GIT Installation Guide") you can find installation tutorial for GIT. 


### Usage Examples

You need to clone the project and then to build the docker image with the following commands:

```
git clone https://github.com/stoyanovgeorge/docker_ffmpeg.git
docker build -t "test_image:dockerfile" .
```

The resulting image:

```
$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
test_image          dockerfile          ac408a793f30        13 seconds ago      1.13 GB
```

### Bugs and Missing Features

Please use [Github Issues](https://github.com/stoyanovgeorge/docker_docker/issues "Github Issues") in case you spot a bug or have an idea how to optimize the scripts. 

### External Links

* [FFMPEG Generic Compilation Guide](https://trac.ffmpeg.org/wiki/CompilationGuide/Generic "FFMPEG Generic Compilation Guide")
* [FFMPEG Ubuntu Compilation Guide](https://trac.ffmpeg.org/wiki/CompilationGuide/Ubuntu "FFMPEG Ubuntu Compilation Guide")
* [FFMPEG Syntax](https://ffmpeg.org/ffmpeg-all.html "FFMPEG Syntax")
* [FFMPEG Filters](https://ffmpeg.org/ffmpeg-filters.html "FFMPEG Filters")
* [Comparison of Video Codecs and Containers](http://download.das-werkstatt.com/pb/mthk/info/video/comparison_video_codecs_containers.html "Video Codecs Comparison")
* [List of YUV Formats](http://www.fourcc.org/yuv.php "List of YUV Formats")
* [Comparison of Container Formats](http://www.digitizationguidelines.gov/guidelines/video_reformatting_compare.html "Comparison of Container Formats")
* [X264 Encoding Guide](https://trac.ffmpeg.org/wiki/Encode/H.264 "X264 Encoding Guide")
* [FFV1 Video Encoding](https://trac.ffmpeg.org/wiki/Encode/FFV1 "FFV1 Video Encoding")
* [FFMPEG Ubuntu Compilation Guide](https://trac.ffmpeg.org/wiki/CompilationGuide/Ubuntu "FFMPEG Ubuntu Compilation Guide")
* [Kvazaar - Open Source HEVC Encoding Library GitHub Project](https://github.com/ultravideo/kvazaar "Kvazaar GitHub")
* [Kvazaar Official Webpage](http://ultravideo.cs.tut.fi/#encoder "Kvazaar Official Webpage")
* [X265 Commands](http://x265.readthedocs.io/en/default/cli.html "X265 Encoding Guide")
* [FFMPEG Presets Github](https://github.com/joeyblake/FFmpeg-Presets "FFMPEG Precompiled Presets")
* [FFPROBE examples](http://www.bugcodemaster.com/article/use-ffprobe-obtain-information-video-files "FFPROBE examples")
* [FFProbe Tips](https://trac.ffmpeg.org/wiki/FFprobeTips "FFProbe Tips")
* [VP9 Compression Guide](https://sites.google.com/a/webmproject.org/wiki/ffmpeg/vp9-encoding-guide "VP9 Compression Guide")
* [VP9 vs. H.264 vs. H.265 Comparison](https://blogs.gnome.org/rbultje/2015/09/28/vp9-encodingdecoding-performance-vs-hevch-264/ "VP9 vs. H.264 vs. H.265")
* [VP9 Encoder Parameters](https://www.webmproject.org/docs/encoder-parameters/ "VP9 Encoder Parameters")

