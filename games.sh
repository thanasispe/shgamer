#!/bin/env sh

path="$HOME/Games"

download_tar() {
	[ ! -e "$path/$2" ] \
	&& wget "$1" -O "$2.tar" \
	&& mkdir "$path/$2" \
	&& tar -xf "$2.tar" -C "$path/$2" \
	&& rm "$2.tar"
}

download_file() {
	[ ! -e "$path/$2" ] \
	&& wget "$1" -O "$2" \
	&& chmod +x "$2" \
	&& mkdir "$path/$2" \
	&& mv "$2" "$path/$2"
}

show_prompt() {
	read -p "Do you want to install $1? [y/N] " REPLY
	case "$REPLY" in
		[Yy]* ) echo "y";;
		[Nn]* ) echo;;
		* ) echo;;
	esac
}

mkdir -p "$path"
can_armagetronad="$(show_prompt 'Armagetron Advanced')"
can_cataclysm="$(show_prompt 'Cataclysm: Dark Days Ahead')"
can_sauerbraten="$(show_prompt 'Cube 2: Sauerbraten')"
can_supertuxkart="$(show_prompt 'SuperTuxKart')"
can_teeworlds="$(show_prompt 'Teeworlds')"
can_warsow="$(show_prompt 'Warsow')"

[ -n "$can_armagetronad" ] && download_file \
'https://launchpad.net/armagetronad/0.2.9/0.2.9.1.0/+download/ArmagetronAdvanced-0.2.9.1.0.AppImage' \
'armagetronad'

[ -n "$can_cataclysm" ] && download_tar \
'https://github.com/CleverRaven/Cataclysm-DDA/releases/download/0.F/cdda-linux-tiles-x64-2021-07-03-0512.tar.gz' \
'cataclysm'

[ -n "$can_sauerbraten" ] && download_tar \
'https://sourceforge.net/projects/sauerbraten/files/sauerbraten/2020_11_29/sauerbraten_2020_12_29_linux.tar.bz2/download' \
'sauerbraten'

[ -n "$can_supertuxkart" ] && download_tar \
'https://github.com/supertuxkart/stk-code/releases/download/1.3/SuperTuxKart-1.3-linux-64bit.tar.xz' \
'supertuxkart'

[ -n "$can_teeworlds" ] && download_tar \
'https://github.com/teeworlds/teeworlds/releases/download/0.7.5/teeworlds-0.7.5-linux_x86_64.tar.gz' \
'teeworlds'

[ -n "$can_warsow" ] && download_tar \
'https://warsow.net/warsow-2.1.2.tar.gz' \
'warsow'
