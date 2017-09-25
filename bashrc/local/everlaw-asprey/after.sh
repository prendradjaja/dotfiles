# created by servers/scripts/install/everlaw-setup.sh: (and moved here duh)
export JAVA_HOME=/usr/lib/jvm/java-8-oracle/jre
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.5.1
export PATH=$PATH:$EC2_HOME/bin

export GOPATH=/home/pandu/tools/gohome
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/home/pandu/tools/prebase
export PATH=$PATH:/home/pandu/personal/git-antebase

alias ssh-dos="ssh pandu@138.197.204.111 -i ~/.ssh/digital-ocean-sandbox"
alias ldb="mysql -u local ESI"

alias st="~/personal/stashtag/stashtag.py"

source ~/dotfiles/git-completion.bash

alias jiw="~/personal/jq-interactive-wrapper/jiw.py"

# i can't remember why i chose this name, but it's basically like "github PR version of git log"
alias hr="git log develop.. --pretty=oneline | tac"
