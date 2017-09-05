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
alias h='git'
alias gc="clear && git diff --cached && echo ... && read && git commit"
alias hc="clear && git diff --cached && echo ... && read && git commit"
# "stash apply"
function sa { git stash apply "stash@{$1}"; }
# "stash unapply"
function su { git stash show -p "stash@{$1}" | git apply --reverse; }

# http server
alias ph='python -m SimpleHTTPServer 8000'

# tsc
alias ftsc='node ~/prog/TypeScript-frozen/built/local/tsc.js'

# scss
alias scssdir="scss --watch scss:css"

# python
alias py='python'
alias py3='python3'
alias ipy='ipython'
alias ipy3='ipython3'
export PYTHONSTARTUP="$HOME/dotfiles/pythonrc"

# "visual bell"
alias vbel="python -c \"for i in range(10): print '#' * 75\""

# npm helpers
alias npm-list-toplevel-g="npm list -g --depth=0 2>/dev/null"
alias npm-list-toplevel="npm list --depth=0 2>/dev/null"
function ndo { (PATH=$(npm bin):$PATH; eval $@;) }

# import git repo
alias git-import="python ~/dotfiles/git-import/main.py"
