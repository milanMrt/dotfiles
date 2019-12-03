#!/bin/sh

export PATH="$PATH:$HOME/.scripts"
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox"
export PAGER="less"
export READER="zathura"

# nnn
export NNN_BMS="d:~/Documents;h:~;D:~/Downloads;w:~/Pictures/wallpapers"
export NNN_SCRIPT="$HOME/.scripts/makewall"
export NNN_USE_EDITOR=1

[ -f ~/.bashrc ] && source ~/.bashrc

[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x dwm >/dev/null && exec startx

tty | grep tty >/dev/null && wal -Rns
