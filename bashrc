# ~/.bashrc: executed by bash(1) for non-login shells.

source ~/dotfiles/extras/ubuntu-bashrc

export TERM='xterm-256color'

# undefine CTRL-S
stty stop undef

function gvim () { (/usr/bin/gvim -f "$@" &) }
function mkcd () { command mkdir $1 && cd $1; } # why 'command'?
function c () { command cd $1 && l; } # why 'command'?

alias eh='xdg-open .'

alias cdp='cd -P .'
alias cdpp='cd -P ..'

alias qmv='qmv -f do'
alias ydl='youtube-dl -t -c'

alias sshai='ssh cs188-jq@star.cs.berkeley.edu'
alias sshos='ssh cs162-fn@star.cs.berkeley.edu'
alias hive='ssh cs162-fn@hive17.cs.berkeley.edu'
alias sshocf='ssh prendra@ssh.ocf.berkeley.edu'

alias e='vim'
alias a='vim +Autumn'
alias avim='vim +Autumn'

# Don't need if I'm gonna use symlinks with these names
# alias py='python'
# alias py3='python3'

alias g='git'

alias t='tmux'
alias ta='tmux attach'

alias c..='cd ..'
alias c...='cd ../..'
alias c....='cd ../../..'
alias c.....='cd ../../../..'
alias c......='cd ../../../../..'
alias c.......='cd ../../../../../..'
alias c........='cd ../../../../../../..'

alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage:'

bind '"\C-g"':"\"fg\C-m\""
bind '"\eu"':"\"cd ..\C-m\""

alias pd='pwd | sed s,/home/pandu,~,'

alias rm='echo "Use trash-put!"; false'
