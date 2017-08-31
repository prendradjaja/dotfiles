# ls
alias l='ls -CF'
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -alF'
alias lt="ls | grep -v '\.\(pdf\|aux\|log\)$' | column"

# cd and physical directories
mkcd () { command mkdir "$@" && cd "$@"; } # why 'command'?
c () { cd "$@" && l; }

co() { cd ~/c/$1 && l; }
_include _co.sh

alias cdp='cd -P .'
alias cdpp='cd -P ..'

alias pd='pwd | sed s,/home/pandu,~,'

# opening directories and files with the GUI
alias eh='xdg-open .'
alias seh='xdg-open . & exit'

alias o='xdg-open'

# use trash-put instead of rm
alias rm='echo "Use trash-put!"; false'
alias trash="trash-put"

# qmv
alias qmv='qmv -f do'

# instantiate template
tplate () { cp ~/Templates/$1 $2; }
_include _tplate.sh

# smart "du" -- shows sizes of stuff
sdu() { paste <(du -s *) <(du -sh *) | sort -rn | awk -F'\t' '{print $3 "\t" $4}' | less; }

# cd into a file's dir
fcd() { cd "$(dirname "$1")"; }
# "N"avigate and "O"pen
no() {
    local myFile=$(xsel --clipboard)
    fcd "$myFile"
    vim +QuickOpen "$myFile"
}
