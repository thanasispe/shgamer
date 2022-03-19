#!/bin/env sh

sudo dpkg --add-architecture i386
sudo apt update && sudo apt install -y \
wine wine64 wine32 \
libsdl2-2.0-0 libsdl2-2.0-0:i386 \
libsdl2-image-2.0-0 \
libsdl2-mixer-2.0-0 \
libsdl2-ttf-2.0-0 \
libsdl2-net-2.0-0 \
libvulkan1 libvulkan1:i386 \
libasound2-plugins:i386 \
libdbus-1-3:i386 \
libsqlite3-0:i386

sudo add-apt-repository -y ppa:lutris-team/lutris
sudo apt install -y lutris
