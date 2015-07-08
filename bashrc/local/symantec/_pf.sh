function _pf () {
  local cur

  COMPREPLY=()

  if [ $COMP_CWORD -eq 1 ]; then
    cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $( compgen -W '$(ls /build/Perforce/)' -- $cur ) )
  fi

  return 0
}

complete -F _pf pf
