alias ng="/crunchbase/client_app/node_modules/.bin/ng"
alias png7="/Users/pandu/personal/tools/ng7/node_modules/.bin/ng"
alias png8="/Users/pandu/personal/tools/ng8/node_modules/.bin/ng"
export PATH=$PATH:~/tools/ops_tools/bin
export PATH=$PATH:~/dotfiles/bashrc/local/crunchbase-bertino/

eval $(thefuck --alias oops)
eval $(thefuck --alias doh)

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
# export PATH=${JAVA_HOME}/bin:$PATH
export PATH=$PATH:${JAVA_HOME}/bin

export PATH=$PATH:/Users/pandu/tools/apache-maven-3.6.0/bin

# N.B. CB journal 2019-02-08 for notes on node versions
export PATH=$PATH:/usr/local/opt/node@12/bin
# not sure this actually worked, but if i type `node`  i get sent to Homebrew's node 12 anyway so prob fine

alias logs="docker logs -f client_app_clientapp_1"
alias j="vim +Journal"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
