# vim
EDITOR=vim
alias e='vim'
gvim () { (/usr/bin/gvim -f "$@" &) }

# ed
alias em='ed -p "> " -v'

# tmux
alias t='tmux'
alias ta='tmux attach'

# git
alias g='git'
alias gc="clear && git diff --cached && echo ... && read && git commit"

# http server
alias ph='python -m SimpleHTTPServer 8000'

# tsc
alias ftsc='node ~/prog/TypeScript-frozen/built/local/tsc.js'

# scss
alias scssdir="scss --watch scss:css"

# python
alias py='python'
alias py3='python3'
export PYTHONSTARTUP="/home/pandu/dotfiles/pythonrc"
