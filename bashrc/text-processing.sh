# colorize-diff
alias cod="colorize-diff"

# less
alias le="less"

# grep
alias grep='grep --color=auto'

# colormatch
_include colors.sh
colormatch () { sed "/$1/s/.*/$2&$PLAIN/"; }
