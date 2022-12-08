#!/bin/bash
set -e


if [ -d "home/gcc-linaro-aarch64-linux-gnu-4.8-2013.09_linux" ]; then
    echo "[SKIP] Toolchain already downloaded."
else
   wget https://releases.linaro.org/archive/13.09/components/toolchain/binaries/gcc-linaro-aarch64-linux-gnu-4.8-2013.09_linux.tar.bz2
   tar xf gcc-linaro-aarch64-linux-gnu-4.8-2013.09_linux.tar.bz2 -C home
   rm gcc-linaro-aarch64-linux-gnu-4.8-2013.09_linux.tar.bz2
fi

export PATH=$PATH:$HOME/bin/
BUILD_HOME=./home
mkdir -p $BUILD_HOME

USERID="$(id -u ${USER})" USERGID="$(id -g ${USER})" USER=${USER} docker-compose up --build

