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
_include _npm.sh

_include sprot.sh
_include notes.sh

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
        | grep pandu \
        | head -n 10
}
hb () {
    # list git branches ordered by most recently checked out
    _hb | cat -n | sed 's/^    //' | sed 's/	/  /'
}

hbn () {
    git checkout $(sed "$1q;d" <(_hb))
}
alias hb1="hbn 1"
alias hb2="hbn 2"
alias hb3="hbn 3"
alias hb4="hbn 4"
alias hb5="hbn 5"
alias hb6="hbn 6"
alias hb7="hbn 7"
alias hb8="hbn 8"
alias hb9="hbn 9"
alias hb10="hbn 0"

# for npm -g http://michaelb.org/the-right-way-to-do-global-npm-install-without-sudo/
PATH=~/.local/bin/:$PATH

alias messenger=fb-messenger-cli

start-ssh-agent () {
  eval "$(ssh-agent -s)"
  echo "Now run: ssh-add PATH_TO_KEY"
  echo "OR: work-mode"
  echo "OR: home-mode"
}

_start-ssh-agent () {
  eval "$(ssh-agent -s)"
}

# s

# ^ is not a stray comment -- i fucking have a command called 's' and i have
# no idea where it's defined -- but i don't need it anymore, so i commented it out

# more commands re ssh keys:
# ssh-add -D  # delete all cached keys
# ssh-add -l  # check saved keys

# more resources on ssh keys:
# - "multiple ssh keys for different github account" https://gist.github.com/jexchan/2351996

alias work-mode="ssh-add -D && ssh-add ~/.ssh/github"
alias home-mode="ssh-add -D && ssh-add ~/.ssh/personal-github"

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

alias todo="vim +Todo"

alias ct="co client_app && t"
alias slog="sleep 20 && logs"

PATH=$PATH:~/tools/node_stuff/node_modules/coffeescript/bin
# alias markdown-toc="~/tools/node_stuff/node_modules/markdown-toc/cli.js"
# alias toc="markdown-toc"
#
# alias hct="markdown-toc -i REFERENCE.md && markdown-toc -i README.md && hac2"

# alias ee="vim +CtrlP"


PATH=$PATH:~/personal/git-splitter






# # pyenv stuff for eddie's nlp search stuff
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

MASTER=c0b039a6ae0c6b8434408f98a1ebf86e038e0146^
PARTIAL=12e31c3677ba32eea41901220a6ba17648bf231e

alias rename="ts-node ~/crunchbase/client-app-rename-scripts/rename-component-styles.ts"
alias rename-count="rename | awk '{print \$1}' | sort | uniq -c"

nodejson () {
  node -i -e "x = $(cat $1)"
}

alias canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"

PROFILE_SECTION=/Users/pandu/crunchbase/client_app/src/app/shared/components/entity/profile-section/profile-section.component.html

alias tourneys_thematic="python3 ~/personal/lichess-thematic-tournament-notification/find-thematic-tournaments.py"
alias chapter_title="~/personal/lichess-study-chapter-title/main.sh"

ngnew() {
  mkdir "$1" &&
    cd "$1" &&
    npm init -y &&
    npm i @angular/cli &&
    rm package.json package-lock.json &&
    npx ng new "$1" --directory .
}

alias npm-add="npm install --save-exact"
alias npm-add-dev="npm install --save-exact --save-dev"

alias internet-off="networksetup -setairportpower en0 off"

alias deploy-crunchspace="scp -r ~/personal/crunchspace/client/dist/* prendra@ssh.ocf.berkeley.edu:~/public_html/crunchspace"
alias staging-deploy-crunchspace="scp -r ~/personal/crunchspace/client/dist/* prendra@ssh.ocf.berkeley.edu:~/public_html/staging-crunchspace"

# /usr/local/bin/psql is broken
alias psql-wat="/Applications/Postgres.app/Contents/Versions/13/bin/psql"

alias home-push="home-mode && git push && work-mode"

alias mpy="moshpy"

alias fourteen="nvm use 14"
alias sixteen="nvm use 16"

col1() { awk '{print $1}'; }
col2() { awk '{print $2}'; }
col3() { awk '{print $3}'; }
col4() { awk '{print $4}'; }
col5() { awk '{print $5}'; }
col6() { awk '{print $6}'; }
col7() { awk '{print $7}'; }
col8() { awk '{print $8}'; }
col9() { awk '{print $9}'; }

# Add crunchbase/ops_tools to $PATH for convenient access
export PATH=/Users/pandu/crunchbase/ops_tools/bin:$PATH


# Load Angular CLI autocompletion.
source <(ng completion script)
