alias s="_start-ssh-agent && ssh-add ~/.ssh/github"
alias spush="_start-ssh-agent && ssh-add ~/.ssh/github && git push"

# if it says to rebuild node sass, kill it and start over
alias unfuck="\rm -rf .node-sass-cache && \rm -rf node_modules/node-sass/vendor"

alias c1="yarn lint && yarn lint:spec"
alias c2="yarn test:unit"
