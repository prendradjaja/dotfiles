PROMPT_COMMAND='DIR=`pwd|sed -e "s!$HOME!~!"`; if [ ${#DIR} -gt 28 ]; then CurDir=${DIR:0:9}...${DIR:${#DIR}-22}; else CurDir=$DIR; fi'

# No hostname
PS1='\j \[\033[1m\]${CurDir}\[\033[0m\] '

# With hostname
# PS1='\j [\h] \[\033[1m\]${CurDir}\[\033[0m\] '

# Hostname, monochrome
# PS1='\j [\h] ${CurDir} : '

