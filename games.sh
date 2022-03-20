#!/bin/env sh

path="$HOME/Games"
url_sauerbraten='https://sourceforge.net/projects/sauerbraten/files/sauerbraten/2020_11_29/sauerbraten_2020_12_29_linux.tar.bz2/download'
url_warsow='https://warsow.net/warsow-2.1.2.tar.gz'

download_tar() {
	curl -L "$1" > "$2"; tar -xf "$2" -C "$path"; rm "$2"
}

mkdir -p "$path"
download_tar "$url_sauerbraten" 'sauerbraten.tar.bz2'
download_tar "$url_warsow" 'warsow.tar.gz'
