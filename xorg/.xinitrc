#!/bin/bash -x

xrandr --auto

wal -R
set -i '/urg/d' $HOME/.cache/wal/colors-wal-dwm.h
xrdb ~/.Xresources

xset r rate 200 50
xset -b
xbacklight -set 60

dunst &

setxkbmap -model thinkpad -layout se

xwallpaper --output LVDS1 --center .config/wall.jpg

dwm_status &

redshift &
#xss-lock -- /usr/bin/slock &


exec dwm 2> /tmp/dwm.log
