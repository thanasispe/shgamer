#!/bin/env sh

path="$HOME/Games"
url_sauerbraten='https://sourceforge.net/projects/sauerbraten/files/sauerbraten/2020_11_29/sauerbraten_2020_12_29_linux.tar.bz2/download'
url_warsow='https://warsow.net/warsow-2.1.2.tar.gz'

download_tar() {
	[ ! -e "$path/$2" ] && curl -L "$1" > "$2" && tar -xvf "$2" -C "$path" && rm "$2"
}

show_prompt() {
	read -p "Do you want to install $1? [Y/n] " REPLY
	case "$REPLY" in
		[Yy]* ) echo "y";;
		[Nn]* ) echo;;
		* ) echo "y";;
	esac
}

mkdir -p "$path"
can_warsow="$(show_prompt Warsow)"
can_sauerbraten="$(show_prompt Sauerbraten)"
[ -n "$can_warsow" ] && download_tar "$url_warsow" 'warsow'
[ -n "$can_sauerbraten" ] && download_tar "$url_sauerbraten" 'sauerbraten'
