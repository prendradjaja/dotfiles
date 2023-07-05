# ls
alias l='ls -CF'
alias ls='ls'  # --color=auto is nice to have but doesn't work on Mac
alias la='ls -A'
alias ll='ls -alF'
alias lt="ls | grep -v '\.\(pdf\|aux\|log\)$' | column"
# ls with color on mac
export CLICOLOR=1

# cd and physical directories
mkcd () { command mkdir "$@" && cd "$@"; } # why 'command'?
# c () { cd "$@" && l; }
echoargs () { echo "$@"; }
c () {
  if [ $# -eq 0 ]; then  # https://unix.stackexchange.com/questions/25945/how-to-check-if-there-are-no-parameters-provided-to-a-command
    cd && l
  elif [ $1 == "-" ]; then  # https://stackoverflow.com/questions/9727695/if-arguments-is-equal-to-this-string-define-a-variable-like-this-string
    cd -
  elif [[ -d "$1" ]]; then  # https://stackoverflow.com/questions/4665051/check-if-passed-argument-is-file-or-directory-in-bash
    cd "$1" && l
  else
    vim "$1"
  fi
}
# cd and c should only complete with directories (not files)
complete -d cd
complete -d c

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
# alias rm='echo "Use trash-put!"; false'
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
    local myFile=$(pbpaste)
    fcd "$myFile"
    # vim +QuickOpen "$myFile"
    vim "$myFile"
}

# going up
alias ..="cd .. && l"
alias ...="cd ../.. && l"
alias ....="cd ../../.. && l"
alias .....="cd ../../../.. && l"
alias ......="cd ../../../../.. && l"
alias .......="cd ../../../../../.. && l"
alias ........="cd ../../../../../../.. && l"
alias .........="cd ../../../../../../../.. && l"
