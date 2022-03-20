if [[ `which pacman` ]]; then
    ./arch.sh

elif [[ `which apt` ]]; then
    ./ubuntu.sh
elif [[ `which yum` ]]; then
    ./fedora.sh
fi