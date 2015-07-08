# No shortening, newline
PS1='\n\j \[\033[1m\]\w\[\033[0m\]\n> '

unalias rm
unset -f gvim

pf() { cd /build/Perforce/$1 && l; }
source ~/dotfiles/bashrc/local/symantec/_pf.sh
