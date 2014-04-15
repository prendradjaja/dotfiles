# ~/.bashrc: executed by bash(1) for non-login shells.

source ~/dotfiles/extras/bashrc-ubuntu
source ~/dotfiles/extras/bashrc-general

# Is there any way I can detect whether or not I can use this?
PS1='\j \[\033[1m\]${CurDir}\[\033[0m\] '

export TERM='xterm-256color'

# undefine CTRL-S
stty stop undef

function gvim () { (/usr/bin/gvim -f "$@" &) }

alias qmv='qmv -f do'
alias ydl='youtube-dl -t -c'

alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage:'

bind '"\C-g"':"\"fg\C-m\""
bind '"\eu"':"\"cd .. && l\C-m\""

alias pd='pwd | sed s,/home/pandu,~,'

alias rm='echo "Use trash-put!"; false'
