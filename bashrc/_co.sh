function _co () {
  local cur

  COMPREPLY=()

  if [ $COMP_CWORD -eq 1 ]; then
    cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $( compgen -W '$(ls ~/c/)' -- $cur ) )
  fi

  return 0
}

complete -F _co co
