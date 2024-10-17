#!/bin/bash

export GTK_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export QT_IM_MODULE=fcitx
export XIM_PROGRAM=/usr/bin/fcitx

export XMENU="dmenu"
export TERMINAL="st"

pkill ssh-agent; eval $(ssh-agent)

numlockx on
nitrogen --restore
screen -auto

sxhkd -m 1 &
otd-daemon &
picom -b
nm-applet &
blueman-applet &
udiskie -t &
parcellite &
# dropbox &
keepassxc &

exec dwm
