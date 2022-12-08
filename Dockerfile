FROM ubuntu:16.04
ARG HOSTUID
ARG HOSTGID

RUN apt-get update
RUN apt-get install -y gawk wget vim openjdk-8-jdk git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip dfu-util python3-minimal python-minimal bc mkisofs pixz lib32stdc++6  python2.7
RUN apt-get install -y locales python-yaml openssl libssl-dev doxygen time python subversion g++-4.8 gcc-4.8 cgpt  bsdmainutils libxml-simple-perl
RUN apt-get purge -y g++-5 gcc-5

RUN apt-get install -y python-sphinx trace-cmd crash
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 10
RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 10

RUN update-alternatives --install /usr/bin/cc cc /usr/bin/gcc 30
RUN update-alternatives --set cc /usr/bin/gcc

RUN update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++ 30
RUN update-alternatives --set c++ /usr/bin/g++

ENV HOSTGID=$HOSTGID
ENV HOSTUID=$HOSTUID

ARG USER

ENV USER=$USER

RUN locale-gen en_US.UTF-8
RUN update-locale LANG=en_US.UTF-8

RUN groupadd $USER --gid $HOSTGID
RUN adduser --disabled-password --uid $HOSTUID --gid $HOSTGID --gecos "" ${USER}

