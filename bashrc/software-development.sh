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
source ~/dotfiles/git-completion.bash
alias g='git'
alias h='git'
# alias h='~/personal/git-vertigo/wrapper.py'
alias gc="clear && git diff --cached && echo ... && read && git commit"
# alias hc="clear && git diff --cached && echo ... && read && git commit"
alias hc="\
    export GIT_EDITOR='vim -c \"inoremap <c-m> <esc>ZZ\" -c startinsert' && \
    clear && \
    git status        && echo ... && read && clear && \
    git diff --cached && echo ... && read && \
    git commit"
alias hs='git status && echo && git lg1 | head -n1'
alias hs.='git status . && echo && git lg1 | head -n1'
alias hd='git diff'
alias hac="\
    export GIT_EDITOR='vim -c \"inoremap <c-m> <esc>ZZ\" -c startinsert' && \
    git add -u        && clear && \
    git status        && echo ... && read && clear && \
    git diff --cached && echo ... && read && \
    git commit"
alias hach="\
    export GIT_EDITOR='vim -c \"inoremap <c-m> <esc>ZZ\" -c startinsert' && \
    git add -u .      && clear && \
    git status        && echo ... && read && clear && \
    git diff --cached && echo ... && read && \
    git commit"
# 2 = faster
alias hac2="\
    git add -u        && clear && \
    git diff --cached && echo ... && read && \
    git commit -m '++' && git push"
alias push="git push"
alias fetch="git fetch"
alias ff="git ff"
# "stash apply"
function sta { git stash apply "stash@{$1}"; }
# "stash unapply"
function stu { git stash show -p "stash@{$1}" | git apply --reverse; }
# "stash show"
function sts { git show "stash@{$1}"; }
function edit-conflicts {
    git status && vim `git diff --name-only | uniq`
}

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
