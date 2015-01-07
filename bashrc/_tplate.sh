function _tplate () {
  local cur

  COMPREPLY=()

  if [ $COMP_CWORD -eq 1 ]; then
    cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $( compgen -W '$(ls ~/Templates/)' -- $cur ) )
  fi

  return 0
}

complete -F _tplate tplate
