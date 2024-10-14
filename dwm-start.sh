#!/bin/bash

export XMENU="dmenu"
export TERMINAL="st"

nitrogen --restore &

sxhkd -m 1 &
pkill picom && picom -b & > /dev/null

exec dwm > /dev/null
