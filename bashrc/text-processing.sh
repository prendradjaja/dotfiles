# colorize-diff
alias cod="sed 's/^-/\x1b[31m-/;s/^+/\x1b[32m+/;s/^@/\x1b[34m@/;s/$/\x1b[0m/' | less -R"
alias gdiff="git diff --no-index"

# less
alias le="less"
alias ler="less -R"

# grep
alias grep='grep --color=auto'

# colormatch
_include colors.sh
colormatch () { sed "/$1/s/.*/$2&$PLAIN/"; }
