alias ng="/crunchbase/client_app/node_modules/.bin/ng"
alias png="/Users/pandu/personal/tools/ng/node_modules/.bin/ng"
export PATH=$PATH:~/tools/ops_tools/bin
eval $(thefuck --alias)

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
# export PATH=${JAVA_HOME}/bin:$PATH
export PATH=$PATH:${JAVA_HOME}/bin

export PATH=$PATH:/Users/pandu/tools/apache-maven-3.6.0/bin

# N.B. I have two versions of Node installed -- see CB journal 2018-02-08
export PATH=$PATH:/usr/local/opt/node@10/bin

alias logs="docker logs -f client_app_clientapp_1"
