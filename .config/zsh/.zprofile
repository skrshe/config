export PATH=$PATH:~/bin

if [[ -z $DISPLAY && $TTY = /dev/tty1 ]]; then
    startx
fi

