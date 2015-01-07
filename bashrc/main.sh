# ~/.bashrc: executed by bash(1) for non-login shells.

_include () { source ~/dotfiles/bashrc/$1; }

_include ubuntu.sh
_include general.sh
_include prompt.sh

_include general.sh
_include system.sh
_include keyboard-shortcuts.sh

_include navigation-and-files.sh
_include software-development.sh
_include other-programs.sh
_include text-processing.sh

unset -f _include
