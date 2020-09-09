#!/bin/bash
# requires:
# 	xdotool
# 	wmutils https://github.com/wmutils/core
#		https://aur.archlinux.org/packages/wmutils-git/ 
# get screen resolution width and height
#ROOT=$(lsw -r)
#width=$(wattr w $ROOT)
#height=$(wattr h $ROOT)

# option 1: set terminal emulator manually
# my_term=urxvt
# my_term=xterm
# my_term=terminator
my_term=kitty_drp

# option 2: auto detect terminal emulator (note: make sure to only open one)
# my_term="urxvt|xterm|uxterm|termite|sakura|lxterminal|terminator|mate-terminal|pantheon-terminal|konsole|gnome-terminal|xfce4-terminal"

# get terminal emulator pid ex: 44040485
pid=$(xdotool search --class "$my_term" | tail -n1)

if [[ -z $pid ]]; then
    kitty --start-as=maximized --class=kitty_drp
fi

# get windows id from pid ex: 0x2a00125
wid=$(printf 0x%x "$pid")

# maximize terminal emulator
#wrs "$width" "$height" "$wid"

# toggle show/hide terminal emulator
# wmctrl -ri "$wid" -e 0,1932,58,3438,1385 # move the window into preset position
mapw -t "$wid"
