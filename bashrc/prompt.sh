PROMPT_COMMAND='DIR=`pwd|sed -e "s!$HOME!~!"`; if [ ${#DIR} -gt 28 ]; then CurDir=${DIR:0:9}...${DIR:${#DIR}-22}; else CurDir=$DIR; fi'

# Show jobs if nonzero https://unix.stackexchange.com/questions/35728/is-it-possible-to-customise-the-prompt-to-show-the-if-there-are-any-background-j
# PROMPT_COMMAND='hasjobs=$(jobs -p)'
# PS1='${hasjobs:+\j }\$ '

# No hostname
PS1='\j \[\033[1m\]${CurDir}\[\033[0m\] '

# No shortening, highlight last. Adapted from https://superuser.com/questions/201256/how-to-highlight-current-folder-in-bash-prompt
# PS1='\j - ${PWD%/*}/\[\e[33;1m\]${PWD##*/}\[\e[0m\]$ '

# No shortening, highlight last, newline
PS1='\n\j - ${PWD%/*}/\[\e[33;1m\]${PWD##*/}\[\e[0m\]\n$ '

# No shortening, newline
# PS1='\n\j \[\033[1m\]\w\[\033[0m\]\n> '

# With hostname
# PS1='\j [\h] \[\033[1m\]${CurDir}\[\033[0m\] '

# Hostname, monochrome
# PS1='\j [\h] ${CurDir} : '
