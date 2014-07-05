# ~/.bashrc: executed by bash(1) for non-login shells.

source ~/dotfiles/extras/bashrc-ubuntu
source ~/dotfiles/extras/bashrc-general
source ~/dotfiles/extras/bashrc-pandabox

export TERM='xterm-256color'

function gvim () { (/usr/bin/gvim -f "$@" &) }

alias qmv='qmv -f do'
alias ydl='youtube-dl -t -c'

alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage:'

alias pd='pwd | sed s,/home/pandu,~,'

alias rm='echo "Use trash-put!"; false'
