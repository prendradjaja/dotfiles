# vim
export EDITOR=vim
alias e='vim'
alias ge='gvim'
gvim () { (/usr/bin/gvim -f "$@" &) }

# ed
alias em='ed -p "> " -v'

# tmux
alias t='tmux'
alias ta='tmux attach'

# git
alias g='git'
alias gc="clear && git diff --cached && echo ... && read && git commit"
fuckg () { eval git $@ 2>&1 | grep '^    git'; }

# http server
alias ph='python -m SimpleHTTPServer 8000'

# tsc
alias ftsc='node ~/prog/TypeScript-frozen/built/local/tsc.js'

# scss
alias scssdir="scss --watch scss:css"

# python
alias py='python'
alias py3='python3'
export PYTHONSTARTUP="/home/$USER/dotfiles/pythonrc"

# "visual bell"
alias vbel="python -c \"for i in range(10): print '#' * 75\""
