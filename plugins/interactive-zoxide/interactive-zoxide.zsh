interactive_zoxide(){
  local selection="$(zoxide query --interactive)"
  [ -n "$selection" ] && cd "$selection"
  zle reset-prompt
}
zle -N interactive_zoxide
bindkey '^f' interactive_zoxide
