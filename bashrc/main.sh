# ~/.bashrc: executed by bash(1) for non-login shells.

_include () { source ~/dotfiles/bashrc/$1; }

_include local/whereami.sh
_include local/$WHEREAMI/before.sh

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

_include sprot.sh

_include local/$WHEREAMI/after.sh
_include nocommit.sh

unset -f _include

export PATH=$PATH:~/dotfiles/bin
_hb () {
    # list git branches ordered by most recently checked out
    git reflog \
        | grep "}: checkout: " \
        | sed "s/.* to //" \
        | dedupe \
        | head -n 10
}
hb () {
    # list git branches ordered by most recently checked out
    _hb | cat -n | sed 's/^    //' | sed 's/	/  /'
}

hbn () {
    git checkout $(sed "$1q;d" <(_hb))
}

# for npm -g http://michaelb.org/the-right-way-to-do-global-npm-install-without-sudo/
PATH=~/.local/bin/:$PATH

alias messenger=fb-messenger-cli

start-ssh-agent () {
  eval "$(ssh-agent -s)"
  echo "Now run: ssh-add PATH_TO_KEY"
}

_start-ssh-agent () {
  eval "$(ssh-agent -s)"
}

s

alias m="~/dotfiles/bashrc/git/m"
mm () {
  if [ -z "$1" ]
  then
    git checkout `m`
  else
    git checkout `m`.d/$1
  fi
}
ml () {
  hb | grep `m`
}
mll () {
  git branch | grep `m`
}
